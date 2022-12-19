<?php
include'../includes/connection.php';
include'../includes/topp.php';
// session_start();
$product_ids = array();
//session_destroy();

//check if Add to Cart button has been submitted
if(filter_input(INPUT_POST, 'addpos')){
    if(isset($_SESSION['pointofsale'])){
        
        //keep track of how mnay products are in the shopping cart
        $count = count($_SESSION['pointofsale']);
        
        //create sequantial array for matching array keys to products id's
        $product_ids = array_column($_SESSION['pointofsale'], 'id');
        #$product_ids = array_column($_SESSION['pointofsale'], 'name');

        if (!in_array(filter_input(INPUT_GET, 'id'), $product_ids)){
        #if (!in_array(filter_input(INPUT_GET, 'name'), $product_ids)){
        $_SESSION['pointofsale'][$count] = array
            (
                'id' => filter_input(INPUT_GET, 'id'),
                #'id' => filter_input(INPUT_POST, 'id'),
                'name' => filter_input(INPUT_POST, 'name'),
                #'name' => filter_input(INPUT_GET, 'name'),
                'price' => filter_input(INPUT_POST, 'price'),
                'quantity' => filter_input(INPUT_POST, 'quantity')
            );   
        }
        else { //product already exists, increase quantity
            //match array key to id of the product being added to the cart
            for ($i = 0; $i < count($product_ids); $i++){
                if ($product_ids[$i] == filter_input(INPUT_GET, 'id')){
                #if ($product_ids[$i] == filter_input(INPUT_GET, 'name')){
                    //add item quantity to the existing product in the array
                    $_SESSION['pointofsale'][$i]['quantity'] += filter_input(INPUT_POST, 'quantity');
                }
            }
        }
        
    }
    else { //if shopping cart doesn't exist, create first product with array key 0
        //create array using submitted form data, start from key 0 and fill it with values
        $_SESSION['pointofsale'][0] = array
        (
            'id' => filter_input(INPUT_GET, 'id'),
            #'id' => filter_input(INPUT_POST, 'id'),
            'name' => filter_input(INPUT_POST, 'name'),
            #'name' => filter_input(INPUT_GET, 'name'),
            'price' => filter_input(INPUT_POST, 'price'),
            'quantity' => filter_input(INPUT_POST, 'quantity')
        );
    }
}

if(filter_input(INPUT_GET, 'action') == 'delete'){
    //loop through all products in the shopping cart until it matches with GET id variable
    foreach($_SESSION['pointofsale'] as $key => $product){
        if ($product['id'] == filter_input(INPUT_GET, 'id')){
            //remove product from the shopping cart when it matches with the GET id
            unset($_SESSION['pointofsale'][$key]);
        }
    }
    //reset session array keys so they match with $product_ids numeric array
    $_SESSION['pointofsale'] = array_values($_SESSION['pointofsale']);
}

//pre_r($_SESSION);

function pre_r($array){
    echo '<pre>';
    print_r($array);
    echo '</pre>';
}
                ?>
                <div class="row">
                <div class="col-lg-12">
                  <div class="card shadow mb-0">
                  <div class="card-header py-2">
                    <h4 class="m-1 text-lg text-primary">Product category</h4>
                  </div>
                        <!-- /.panel-heading -->
                        <div class="card-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                              <li class="nav-item">
                                <a class="nav-link" href="#" data-target="#keyboard" data-toggle="tab">1</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#" data-target="#mouse" data-toggle="tab">2</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="#Acifix">3</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="tab">4</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#monitor" data-toggle="tab">5</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#motherboard" data-toggle="tab">6</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#processor" data-toggle="tab">7</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#powersupply" data-toggle="tab">8</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#others" data-toggle="tab">9</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#search" data-toggle="tab">Search/Scan</a>
                              </li>
                            </ul>

                            <!-- Search form -->
  
                            <form action="" method="GET" name="">
	                            <table>
		                            <tr>
			                            <td><input type="text" name="k" value="<?php echo isset($_GET['k']) ? $_GET['k'] : ''; ?>" placeholder="Search" /></td>
			                            <td><input type="submit" name="" value="Search" /></td>
		                            </tr>
	                            </table>
                            </form>

                            <?php
                            // get the search terms from the url
                            $k = isset($_GET['k']) ? $_GET['k'] : '';

                            // create the base variables for building the search query
                            $search_string = "SELECT * FROM product WHERE ";
                            $display_words = "";
					
                            // format each of search keywords into the db query to be run
                            $keywords = explode(' ', $k);			
                            foreach ($keywords as $word){
	                            $search_string .= "NAME LIKE '%".$word."%' OR ";
	                            $display_words .= $word.' ';
                            }
                            $search_string = substr($search_string, 0, strlen($search_string)-4);
                            $display_words = substr($display_words, 0, strlen($display_words)-1);
    
                            // run the query and get the results

                            $query = mysqli_query($db, $search_string);
                            $result_count = mysqli_num_rows($query);

                            echo '<div class="right"><b><u>'.number_format($result_count).'</u></b> results found</div>';
                            echo 'Your search for <i>"'.$display_words.'"</i><hr />';
                            while($row = mysqli_fetch_array($query)){
                              echo '<div class="result"><a href="product.php?id='.$row['PRODUCT_ID'].'">'.$row['NAME'].'</a></div>';
                              //add button to each product
                              echo '<form method="post" action="pos.php?action=add&id='.$row['PRODUCT_ID'].'>' ;
                              echo '<input type="hidden" name="quantity" value="1" />';
                              echo '<input type="hidden" name="name" value="'.$row['NAME'].'" />';
                              echo '<input type="hidden" name="price" value="'.$row['PRICE'].'" />';
                              echo '<input type="submit" name="add_to_cart" style="margin-top:5px;" class="btn btn-success" value="Add to Cart" />';
                              echo '</form>';
                            }
                            ?>

<!-- TAB PANE AREA - ANG UNOD KA TABS ARA SA TABPANE.PHP -->
<?php include 'postabpane.php'; ?>
<!-- END TAB PANE AREA - ANG UNOD KA TABS ARA SA TABPANE.PHP -->

        <div style="clear:both"></div>  
        <br />  
        <div class="card shadow mb-4 col-md-12">
        <div class="card-header py-3 bg-white">
          <h4 class="m-2 font-weight-bold text-primary">Point of Sale</h4>
        </div>
        
      <div class="row">    
      <div class="card-body col-md-9">
        <div class="table-responsive">

        <!-- trial form lang   -->
<form role="form" method="post" action="pos_transac.php?action=add">
  <input type="hidden" name="employee" value="<?php echo $_SESSION['FIRST_NAME']; ?>">
  <input type="hidden" name="role" value="<?php echo $_SESSION['JOB_TITLE']; ?>">
  
        <table class="table">    
        <tr>  
             <th width="55%">Product Name</th>  
             <th width="10%">Quantity</th>  
             <th width="15%">Price</th>  
             <th width="15%">Total</th>  
             <th width="5%">Action</th> 
        </tr> 
        
        <?php  

        if(!empty($_SESSION['pointofsale'])):  
            
             $total = 0;  
        
             foreach($_SESSION['pointofsale'] as $key => $product): 
        ?>  
        <tr>  
          <td>
            <input type="hidden" name="name[]" value="<?php echo $product['name']; ?>">
            <?php echo $product['name']; ?>
          </td>  

           <td>
            <input type="hidden" name="quantity[]" value="<?php echo $product['quantity']; ?>">
            <?php echo $product['quantity']; ?>
          </td>  

           <td>
            <input type="hidden" name="price[]" value="<?php echo $product['price']; ?>">
            ৳ <?php echo number_format($product['price']); ?>
          </td>  

           <td>
            <input type="hidden" name="total" value="<?php echo $product['quantity'] * $product['price']; ?>">
            ৳ <?php echo number_format($product['quantity'] * $product['price'], 2); ?></td>  
           <td>
               <a href="pos.php?action=delete&id=<?php echo $product['id']; ?>">
                    <div class="btn bg-gradient-danger btn-danger"><i class="fas fa-fw fa-trash"></i></div>
               </a>
           </td>  
        </tr>
        <?php  
                  $total = $total + ($product['quantity'] * $product['price']);
             endforeach;  
        ?>

        <?php  
        endif;
        ?>  
        </table> 
         </div>
       </div> 

<?php
include 'posside.php';
include'../includes/footer.php';
?>
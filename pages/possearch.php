                              <!-- Search -->
                              <div class="tab-pane fade in mt-2" id="search">
                                <?php
                                    $x = isset($_GET['k']) ? $_GET['k'] : '';
                                    $search_string = "SELECT * FROM product WHERE ";
                                    $display_words = "";
                                    $keywords = explode(' ', $k);			
                                    foreach ($keywords as $word){
	                                    $search_string .= "NAME LIKE '%".$word."%' OR ";
	                                    $display_words .= $word.' ';
                                    }

                                    ?>
                                      <?php  #$query = 'SELECT * FROM product WHERE NAME LIKE '$x' GROUP BY PRODUCT_CODE ORDER by PRODUCT_CODE ASC';
                                        $result = mysqli_query($db, $search_string );

                                        if ($result):
                                            if(mysqli_num_rows($result)>0):
                                                while($product = mysqli_fetch_assoc($result)):
                                                //print_r($product);
                                      ?>
                                    <div class="col-sm-4 col-md-2" >
                                      <form method="post" action="pos.php?action=add&id=<?php echo $product['PRODUCT_ID']; ?>">
                                          <div class="products">
                                              <h6 class="text-info"><?php echo $product['NAME']; ?></h6>
                                              <h6>৳ <?php echo $product['PRICE']; ?></h6>
                                              <input type="text" name="quantity" class="form-control" value="1" />
                                              <input type="hidden" name="name" value="<?php echo $product['NAME']; ?>" />
                                              <input type="hidden" name="price" value="<?php echo $product['PRICE']; ?>" />
                                              <input type="submit" name="addpos" style="margin-top:5px;" class="btn btn-info"
                                                     value="Add" />
                                          </div>
                                      </form>
                                  </div>
                                      <?php endwhile;
                                        endif;
                                    endif;   
                                    ?>
                                  </div>
                              </div>

<!-- wala na di nadala sa tab pane, dalom nana di na part -->
                            </div>
                        </div>
                        <!-- /.panel-body -->
                      </div>
                    </div>
                  </div>
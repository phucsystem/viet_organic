<div class="container prd_tab">
<div class="row">
<div id="producttab">
<div class="hometab">

<div class="tab-head">
<div class="tab-title"><?php /*?><?php echo $heading_title; ?><?php */?></div>
</div>

<div id="tab-latest" class="tab-content ">
	<div class="box">
				<div class="box-content">
					<?php
						$sliderFor = 40;
						$productCount = sizeof($products);
					?>

          <div id="tabs" class="htabs">
            <ul class='etabs'>
          	<li class='tab'>
          			<a href="#tab-latest" class="tab-text" data-text="<?php echo $heading_title; ?>" style="padding-bottom:7px;"><span><?php echo $heading_title; ?></span></a>
          	</li>
          	</ul>
           </div>

					<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>tablatest-carousel<?php }else{?>tablatest-grid<?php }?>">
						<?php foreach ($products as $product) { ?>
										<div class="<?php if ($productCount >= $sliderFor){?>slider-item<?php }else{?>product-items<?php }?>">
								<div class="product-block product-thumb transition">
									<div class="product-block-inner">

										<div class="image">
											<?php if ($product['thumb_swap']) { ?>
											<a href="<?php echo $product['href']; ?>">
											<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
											<img class="img-responsive hover-image" src="<?php echo $product['thumb_swap']; ?>" alt="<?php echo $product['name']; ?>"/>
											</a>
										<?php } else {?>
										<a href="<?php echo $product['href']; ?>">
											<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
										</a>

										<?php } ?>
											<?php if (!$product['special']) { ?>
											<?php } else { ?>
												<span class="saleicon sale">Sale</span>
										<?php } ?>

										<div class="quickview_prd" ><a href="<?php echo $product['quick']; ?>"></a></div>

										</div>
									<div class="product-details">

										<div class="caption">

											<!-- <?php /*?><?php if ($product['rating']) { ?><?php */?>
												<div class="rating">
													<?php for ($i = 1; $i <= 5; $i++) { ?>
														<?php if ($product['rating'] < $i) { ?>
															<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
														<?php } else { ?>
														<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
														<?php } ?>
													<?php } ?>
												</div>
											<?php /*?><?php } ?><?php */?> -->

											<span class="product-name"> <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></span>
											<?php if ($product['price']) { ?>
												<p class="price">
												  <?php if (!$product['special']) { ?>
												  <?php echo $product['price']; ?>
												  <?php } else { ?>
												  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
												  <?php } ?>
												  <?php if ($product['tax']) { ?>
												  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
												  <?php } ?>
												</p>
											<?php } ?>
										<div class="button-group">
											<button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"> <span><?php echo $button_cart; ?></span></button>
											<button class="wishlist_button" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
											<button class="compare_button" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
									    </div>
										</div>


									</div>
									</div>
								</div>
							</div>
						<?php } ?>

					</div>

						<?php if ($productCount >= $sliderFor): ?>
						<div class="customNavigation">
							<a class="fa prev fa-angle-left"></a>
							<a class="fa next fa-angle-right"></a>
						</div>
					<?php endif; ?>
						<?php /*?><?php if ($productCount <= $sliderFor): ?>
						<div class="tm-message">
							<i class="fa fa-frown-o"></i>
							No more products found!
						</div>
						<div class="loadmore">
						<button class="btn btn-default gridcount">View More</button>
						</div>
						<?php endif; ?><?php */?>

				</div>
			 </div>
			  <span class="tablatest_default_width" style="display:none; visibility:hidden"></span>
 </div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
$('#tabs a').tabs();
</script>

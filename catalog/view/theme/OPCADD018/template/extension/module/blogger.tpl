<div class="box megnorblog">
 <?php
		$sliderFor = 5;
		$blogCount = sizeof($blogs);
		$temp2 = 0;
  ?>
  <div class="title-border"><div class="box-heading"><?php echo $heading_title; ?></div></div>
  <div class="box-content">

    <div class="box-product <?php if ($blogCount > $sliderFor){?> owl-carousel blogcarousel <?php }else{?>productbox-grid<?php }?>" id="<?php if ($blogCount >= $sliderFor){?>blog-carousel<?php }else{?>blog-grid<?php }?>">



    <?php foreach ($blogs as $blog) { ?>
	<div class="<?php if ($blogCount >= $sliderFor){?>blog-item<?php }else{?>product-items<?php }?>">
	<?php if ($blogCount >= $sliderFor){?>
	<?php if($blogCount > 2 && $temp2 % 2 == 0) { ?>
    <div class="blog-item">
	<div>
	<?php } else if($blogCount <= 3) { ?>
	<div class="blog-item">
	<?php } ?>
	<?php } else {?>
	<div class="blog-item">
	<?php } ?>

	<div class="product-block">
     <?php if ($blog['image']) { ?>
	  <div class="blog-left">
	  <div class="blog-image">
	   <a href="<?php echo $blog['href']; ?>"><img src="<?php echo $blog['image']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></a>
	  <?php /*?><div class="post-image-hover"> </div>
<p class="post_hover"><a class="icon zoom" title="Click to view Full Image " href="<?php echo $blog['image']; ?>" data-lightbox="example-set"><i class="fa fa-search-plus"></i> </a><a class="icon readmore_link" title="Click to view Read More " href="<?php echo $blog['href']; ?>"><i class="fa fa-link"></i></a></p><?php */?>
	  </div>
	  </div>
	 <?php } ?>
	 <div class="blog-right">
	 <div class="date-time"> <?php echo $blog['date_added']; ?></div>
	  <h4><a href="<?php echo $blog['href']; ?>"><?php echo $blog['title']; ?></a> </h4>

      <div class="blog-desc">
	  <?php if (strlen(($blog['description'])) > 110)
					{
						$maxLength = 110 ; echo substr($blog['description'],0,$maxLength)."..";
					}
					else{
						echo ($blog['description']);
					}
					?>
	  </div>
	  <div class="view-blog">
	  	<div class="write-comment"> <a href="<?php echo $blog['href']; ?>"> <?php echo $blog['total_comments']; ?> <?php echo $entry_comment; ?></a> </div>
		<div class="read-more">  <a href="<?php echo $blog['href']; ?>"> <?php echo $text_read_more; ?></a> </div>
	  </div>

	 </div>
    	</div>

		</div>
	<?php if ($blogCount >= $sliderFor){?>
			<?php if($blogCount > 2 && $temp2 % 2 != 0) { ?>
	  		</div>
	  		</div>
	        <?php } else if($blogCount <= 2) { ?>
	        </div>
	        <?php } $temp2++; ?>
	        <?php } else {?>
			</div>
			<?php } ?>
			<?php } ?>
	<!-- <?php if($blogCount > 2 && $temp2 % 2 != 0) {?>


    <?php } ?> -->

  </div>
   <div class="buttons text-center">
      <button type="button" onclick="location='<?php echo $all_blogs; ?>';" class="btn btn-primary"><?php echo $button_all_blogs; ?></button>
    </div>
  </div>

</div>
<span class="blog_default_width" style="display:none; visibility:hidden"></span>

<script type="text/javascript"><!--

$(document).ready(function(){
$('.blogcarousel').owlCarousel({
		items: 2,
		autoPlay: false,
		singleItem: false,
		navigation: true,
		navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
		pagination: false,
		itemsDesktop : [979,1],
		itemsDesktopSmall :	[767,1],
		itemsTablet: [479,1],
	});
});
--></script>

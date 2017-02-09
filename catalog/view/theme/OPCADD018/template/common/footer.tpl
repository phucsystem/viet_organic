<footer>
  <div id="footer-top">
   <div id="fotter-left-bg"></div>
  <div class="content_footer_top container"><div class="content_footer_top"><?php echo $footertop; ?> </div></div>
  </div>
  <div id="footer" class="container">
     <div class="row">
	 
	 <div class="content_footer_left"><?php echo $footerleft; ?> </div>
	
      <?php if ($informations) { ?>
      <div class="col-sm-3 column info">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
		  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
         <!-- <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>-->
        </ul>
      </div>
      <?php } ?>
      
      <div class="col-sm-3 column">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
        </ul>
      </div>
	  <div class="col-sm-3 column cust_serv">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
		  <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
		  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
	  
      <?php /*?><div class="col-sm-3 column">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div><?php */?>
	
	  <div class="content_footer_right"><div class="content_footer_right"><?php echo $footerright; ?> </div></div>
	  
    </div>
    
  </div>
  <div class="footer-bottom">
	<div class="container">
	<div class="row">
	<div class="copy-right">
	
	<div id="bottom-footer">
	<ul class="list-unstyled">
		<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
		<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
		<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
		<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
		<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		<li class="contact"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
	</ul>
	 <div class="powerd"> <?php echo $powered; ?> </div>
	</div>
	</div>
	
   
	<div class="content_footer_bottom"><?php echo $footerbottom; ?> </div>
	</div>
	</div>
	</div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>
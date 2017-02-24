<?php if (count($languages) > 1) { ?>

<div class="pull-left">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
    <div class="btn-group">
      <?php foreach ($languages as $language) { ?>
      <button class="btn btn-link btn-block language-select" type="button" name="<?php echo $language['code']; ?>"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></button>
      <?php } ?>
    </div>  <input type="hidden" name="code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </form>
</div>
<?php } ?>

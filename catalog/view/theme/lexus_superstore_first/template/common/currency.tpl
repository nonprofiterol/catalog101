<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="currency" id="form-currency">
  <div class="box-currency">
    <label><?php echo $text_currency; ?></label>
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $code) { ?>
    <?php if ($currency['symbol_left']) { ?>
    <button class="btn-link dropdown-toggle" data-toggle="dropdown"><?php echo $currency['symbol_left'];?></button>
    <?php } else { ?>
    <button class="btn-link dropdown-toggle" data-toggle="dropdown"><?php echo $currency['symbol_right']; ?></button>
    <?php } ?>
    <?php } else { ?>
    <?php if ($currency['symbol_left']) { ?>
    
    <button class="currency-select btn-link" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?></button>
    <?php } else { ?>
    <button class="currency-select btn-link" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?></button>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="code" value= "" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
<?php } ?>
<?php if ($modules) { ?>
<div id="sidebar-left">
	<div id="column-left" class=" col-lg-3 col-md-3 col-sm-12 sidebar col-xs-12 hidden-xs sidebar">
	  <?php foreach ($modules as $module) { ?>
	  <?php echo $module; ?>
	  <?php } ?>
	</div>
</div>
<?php } ?>
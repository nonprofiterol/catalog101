<?php  echo $header; ?> 
<?php require( ThemeControlHelper::getLayoutPath( 'common/config_layout.tpl' )  ); ?> 

<div class="maincols">
  <div class="row">
					<?php echo $column_left; ?> 
  
   <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>">
   		<div id="content">
   			<div class="content-top"><?php echo $content_top; ?></div>
   			<div class="content-bottom"><?php echo $content_bottom; ?></div>
   		</div>
   </section> 	
		<?php echo $column_right; ?>
</div>
</div>
<?php echo $footer; ?>
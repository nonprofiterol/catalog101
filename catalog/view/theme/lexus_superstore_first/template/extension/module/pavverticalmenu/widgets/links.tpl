<?php if( isset($links) ){ ?>
 <div class="widget-images box <?php echo $addition_cls ?>  <?php if( isset($stylecls)&&$stylecls ) { ?>box-<?php echo $stylecls;?><?php } ?>">
	<?php if( isset($widget_heading)&&!empty($widget_heading) ){ ?>
	<div class="widget-heading box-heading">
		<?php echo $widget_heading; ?>
	</div>
	<?php } ?>
	<div class="widget-inner clearfix">
		<div id="tabs<?php echo $id;?>" class="panel-group">
			

			<ul class="nav-links">
			  <?php foreach( $links as $key => $ac ) { ?>
			  <li ><a href="<?php echo $ac['link'];?>" ><?php echo $ac['text'];?></a></li>
			  <?php } ?>
			</ul>


		</div>
	</div>
</div>
<?php } ?>
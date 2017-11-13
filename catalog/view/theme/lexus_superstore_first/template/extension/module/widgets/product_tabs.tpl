<?php
	$span = 12/$cols;
	$active = 'latest';
	$id = rand(1,9)+rand();
	$config = $sconfig;
	$theme  = $themename;
	$themeConfig = (array)$config->get('themecontrol');
	$listingConfig = array(
		'category_pzoom'                     => 1,
		'quickview'                          => 0,
		'show_swap_image'                    => 0,
		'product_layout'		=> 'default',
		'enable_paneltool'	=> 0
	);
	$listingConfig     = array_merge($listingConfig, $themeConfig );
	$categoryPzoom 	    = $listingConfig['category_pzoom'];
	$quickview          = $listingConfig['quickview'];
	$swapimg            = $listingConfig['show_swap_image'];
	$categoryPzoom = isset($themeConfig['category_pzoom']) ? $themeConfig['category_pzoom']:0;

	$productLayout = DIR_TEMPLATE.$theme.'/template/common/product/'.$listingConfig['product_layout'].'.tpl';	
	if( !is_file($productLayout) ){
		$listingConfig['product_layout'] = 'default';
	}
	$productLayout = DIR_TEMPLATE.$theme.'/template/common/product/'.$listingConfig['product_layout'].'.tpl';	

	$button_cart = $this->language->get('button_cart');
	$tab = rand();
	$columns_count  = 1;
?>

<div class="widget-products producttabs panel effect-carousel <?php echo $addition_cls;?> <?php if ( isset($stylecls)&&$stylecls) { ?>box-<?php echo $stylecls; ?><?php } ?>">
	<?php if( $show_title ) { ?>
	<div class="widget-heading panel-heading"><h4 class="panel-title"><?php echo $heading_title?></h4></div>
	<?php } ?>
  	<div class="<?php if($tabsstyle == 'tab-v2-r'){echo "tab-v2";}else{echo $tabsstyle;}?> <?php if($tabsstyle=='tab-v2'){echo "tabs-left";}elseif($tabsstyle=='tab-v2-r'){echo "tabs-right";}?>">
  		<div class="tab-heading">
            <ul role="tablist" class="nav nav-tabs" id="product_tabs<?php echo $id;?>">
            	<?php foreach( $tabs as $tab => $products ) { if( empty($products) ){ continue;} ?>
	                <li>
	                    <a data-toggle="tab" role="tab" href="#tab-<?php if($tabsstyle=='tab-2'){echo $tab.'-left-'.$id;}elseif($tabsstyle=='tab-3'){echo $tab.'-right-'.$id;;}else{echo $tab.$id;}?>" aria-expanded="true"><i class="fa <?php if($tab == 'latest'){echo $icon_newest;}elseif($tab=='featured'){echo $icon_featured;}elseif($tab=='bestseller'){echo $icon_bestseller;}elseif($tab=='special'){echo $icon_special;}else{echo $icon_mostviews;};?>"></i><?php echo $objlang->get('text_'.$tab)?></a>
	                </li>
	            <?php } ?>
            </ul>
        </div>   
		<div class="tab-content panel-body">
			<?php foreach( $tabs as $tab => $products ) {
					if( empty($products) ){ continue;}
				?>
				<div class="tab-pane fade box-products owl-carousel-play tabcarousel<?php echo $id; ?>" id="tab-<?php if($tabsstyle=='tab-2'){echo $tab.'-left-'.$id;}elseif($tabsstyle=='tab-3'){echo $tab.'-right-'.$id;;}else{echo $tab.$id;}?>" data-ride="owlcarousel">

					
					<div class="owl-carousel product-grid" data-show="<?php echo ($columns_count); ?>" data-pagination="false" data-navigation="true">
					 <?php
						$pages = array_chunk( $products, $itemsperpage);
					//	echo '<pre>'.print_r( $pages, 1 ); die;
					 ?>
					  <?php foreach ($pages as  $k => $tproducts ) {   ?>
							<div class="item <?php if($k==0) {?>active<?php } ?>">
								<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
									<?php if( $i%$cols == 1 ) { ?>
									  <div class="row products-row">
									<?php } ?>
										  <div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-6 col-xs-12 product-col">
										  <?php require( $productLayout );  ?>
										  </div>

								  <?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
									 </div>
									<?php } ?>
								<?php } //endforeach; ?>
							</div>
					  <?php } ?>
					</div>
					<?php if( count($products) > $itemsperpage ) { ?>
					<div class="carousel-controls-v1">
						<a class="carousel-control left" href="#tab-<?php echo $tab.$id;?>"   data-slide="prev">
									<i class="fa fa-chevron-left"></i>
						</a>
						<a class="carousel-control right" href="#tab-<?php echo $tab.$id;?>"  data-slide="next">
									<i class="fa fa-chevron-right"></i>
						</a>
					</div>

					<?php } ?>
				</div>
			<?php } // endforeach of tabs ?>
		</div>
	</div>
</div>


<script>
$(function () {
$('#product_tabs<?php echo $id;?> a:first').tab('show');
})
$('.tabcarousel<?php echo $id;?>').carousel({interval:<?php echo $auto_play;?>,pause:'hover'});
</script>


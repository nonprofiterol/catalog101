<?php 

	$cols = 4;
	$span = 12/$cols;

	$config = $sconfig;
    $theme  = $themename;
    $themeConfig = (array)$config->get('themecontrol');
    $listingConfig = array( 
        'listing_products_columns'                  => 0,
        'listing_products_columns_small'            => 2,
        'listing_products_columns_minismall'        => 1,
        'cateogry_display_mode'                     => 'grid',
        'category_pzoom'                            => 1,   
        'quickview'                                 => 0,
        'show_swap_image'                           => 0,
        'product_layout'                            => 'default',
        'catalog_mode'                              => 0,
        'enable_paneltool'                          => 0
    ); 
    $listingConfig      = array_merge($listingConfig, $themeConfig );
    $DISPLAY_MODE       = $listingConfig['cateogry_display_mode'];
    $MAX_ITEM_ROW       = $listingConfig['listing_products_columns']?$listingConfig['listing_products_columns']:3; 
    $MAX_ITEM_ROW_SMALL = $listingConfig['listing_products_columns_small']?$listingConfig['listing_products_columns_small']:2;
    $MAX_ITEM_ROW_MINI  = $listingConfig['listing_products_columns_minismall']?$listingConfig['listing_products_columns_minismall']:1; 
    $categoryPzoom      = $listingConfig['category_pzoom']; 
    $quickview          = $listingConfig['quickview'];
    $swapimg            = ($listingConfig['show_swap_image'])?'swap':'';  


    if( isset($_COOKIE[$theme.'_productlayout']) && $listingConfig['enable_paneltool'] && $_COOKIE[$theme.'_productlayout'] ){
        $listingConfig['product_layout'] = trim($_COOKIE[$theme.'_productlayout']);
    }
    
    $productLayout = DIR_TEMPLATE.$theme.'/template/common/product/'.$listingConfig['product_layout'].'.tpl';   
    if( !is_file($productLayout) ){
        $listingConfig['product_layout'] = 'default';
    }
 

	$button_wishlist = $objlang->get("button_wishlist");
	$button_compare = $objlang->get("button_compare");
?>
<div class="box-heading">
	<span><?php echo $heading_title; ?>(<?php echo count($products); ?>)</span>
	<em class="line"></em>
</div>
<?php if(!empty($products)){ ?>
<div class="box-content">
	<div id="product-related" class="slide" data-interval="0">
		<?php if(count($products) > $cols){ ?>
		<div class="carousel-controls">
			<a class="carousel-control left fa fa-angle-left" href="#product-related"   data-slide="prev"></a>
			<a class="carousel-control right fa fa-angle-right" href="#product-related"  data-slide="next"></a>
		</div>
		<?php } ?>
		<div class="carousel-inner">
			<?php foreach ($products as $i => $product) { $i=$i+1; ?>
			<?php if( $i%$cols == 1 && $cols > 1 ) { ?>
			<div class= "item <?php if($i==1) {?>active<?php } ?>">
				<div class="row product-items">
			<?php } ?>
				<div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-6 col-xs-12 product-cols">
					<?php require( $productLayout );  ?>
				</div>
			<?php if( $cols > 1  && ($i%$cols == 0 || $i==count($products)) ) { ?>
				</div>
			</div>
			<?php } ?>
			<?php } ?>
		</div>
	</div>
</div>
<?php } ?>
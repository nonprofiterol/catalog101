<?php  
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

    $span = 12/$limit;
?>
<?php if( $show_title ) { ?>
<h3 class="menu-title"><span><?php echo $heading_title?></span></h3>
<?php } ?>
<div class="widget-product-list <?php echo $addition_cls; ?>">
	<div class="widget-inner">
		<?php foreach ($products as $product) { ?>
		
		<div class="w-product clearfix col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-12 col-xs-12">
			<?php require( $productLayout );  ?>   
		</div>
		<?php } ?>
	</div>
</div>

<?php 

 echo $header; ?> <?php require( ThemeControlHelper::getLayoutPath( 'common/mass-header.tpl' )  ); ?>
<div class="container">

  
  <?php require( ThemeControlHelper::getLayoutPath( 'common/mass-container.tpl' )  ); ?>

  
				<?php echo $column_left; ?> 
  
   <div id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>">
    <div id="content"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($thumb || $description) { ?>
      <div class="category-info clearfix hidden-xs hidden-sm">
        <?php if ($thumb) { ?>
        <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-responsive" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="description"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <?php } ?>

        <?php if ($categories) { ?>
	   <div class="subcategories refine-search panel panel-default box white">
			<div class="panel-heading box-heading">
			  <span><?php echo $text_refine; ?> </span><em class="shapes right"></em><em class="line"></em>
		   </div> 
			  <div class="panel-body category-list clearfix box-content">  
 
					<?php $col=6; $i=0; $ncol = floor(12/$col); foreach( $categories as $category ){  $i++; ?>
            <?php if($i%$col==1) { ?>
            <ul>
              <?php } ?>
                  <li class="category-item">
      							<?php if( $category['thumb'] ){ ?>
      								<div class="image">
                        <a href="<?php echo $category['href']; ?>">
                          <img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" class="img-responsive" />
                        </a>
                      </div>
      							<?php } ?>
      							<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      						</li>
              <?php if( $i%$col==0 || $i==count($categories) ){ ?>
            </ul>
            <?php } ?>
					<?php } ?>
	 
          
        </div>
      </div> 
        <?php } else if ($categories) { ?>
          <div class="refine-search panel panel-default clearfix box white">
          <div class="panel-heading box-heading"><span><?php echo $text_refine; ?></span><em class="shapes right"></em><em class="line"></em></div>
            <?php if (count($categories) <= 5) { ?>
            <div class="panel-body category-list clearfix box-content">
              <ul>
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
              </ul>
            </div>
            <?php } else { ?>
            <div class="panel-body category-list clearfix box-content">
              <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>              
                <ul>
                  <?php foreach ($categories as $category) { ?>
                  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                  <?php } ?>
                </ul>
              <?php } ?>
            </div>
            <?php } ?>
         </div>    
      <?php } ?>
      <?php if ($products) { ?>
      <?php   require( ThemeControlHelper::getLayoutPath( 'product/product_filter.tpl' ) );   ?>
     
      <?php require( ThemeControlHelper::getLayoutPath( 'common/product_collection.tpl' ) );  ?> 
   
      <?php } ?>

        <?php if (!$categories && !$products) { ?>
        <div class="content"><div class="wrapper"><?php echo $text_empty; ?></div></div>
        <div class="buttons">
          <div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-default"><?php echo $button_continue; ?></a></div>
        </div>
        <?php } ?>

      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
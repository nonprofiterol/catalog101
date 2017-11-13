<?php echo $header; ?>

<div class="container">
    <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
    <?php require( PAVO_THEME_DIR."/template/common/breadcrumb.tpl" );  ?>

    <div class="row">
            <?php echo $column_left; ?>

        <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>"><div id="content"><?php echo $content_top; ?>
        <div class="pav-header">
            <h1><?php echo $heading_title; ?></h1>
            <a class="rss-wrapper" href="<?php echo $latest_rss;?>"><span class="fa fa-rss">Rss</span></a>
        </div>
        <div class="pav-filter-blogs wrapper blog-wrapper main-column">
            <div class="pav-blogs">
                <?php $cols = $cat_columns_leading_blogs;
                if( count($leading_blogs) ) { ?>
                    <div class="leading-blogs blog-list-item clearfix">
                        <?php foreach( $leading_blogs as $key => $blog ) { $key = $key + 1;?>
                        <div class="pavcol<?php echo $cols;?>">
                        <?php require( '_item.tpl' ); ?>
                        </div>
                        <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                            <div class="clearfix"></div>
                        <?php } ?>
                        <?php } ?>
                    </div>
                <?php } ?>

				<?php
					$cols = $cat_columns_secondary_blogs;
					$cols = !empty($cols)?$cols:1;
					if ( count($secondary_blogs) ) { ?>
					<div class="secondary clearfix">
						<?php foreach( $secondary_blogs as $key => $blog ) {  $key = $key+1; ?>
						<div class="pavcol<?php echo $cols;?>">
						<?php require( '_item.tpl' ); ?>
						</div>
						<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
							<div class="clearfix"></div>
						<?php } ?>
						<?php } ?>
					</div>
				<?php } ?>
				<div class="pav-pagination pagination"><?php echo $pagination;?></div>
			</div>
		</div>




                <?php echo $content_bottom; ?></div>
        </section>
            <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
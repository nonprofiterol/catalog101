<div class="interactive-banner interactive-banner-<?php echo $banner_type;?> <?php echo $effect_type;?> <?php echo $position;?>  <?php echo $addition_cls; ?>  <?php if( isset($stylecls)&&$stylecls ) { ?>box-<?php echo $stylecls;?><?php } ?>">
	<div class="interactive-banner-body">
        <?php if($thumbnailurl){?>
        <div class="image text-center"><img alt="" src="<?php echo $thumbnailurl;?>" class="img-responsive"></div><?php }?>
        <div class="interactive-banner-profile">
            <!-- <div class="inner-banner"> -->
            <?php if($mask_link){?>
                <a class="btn-links" href="<?php echo $mask_link;?>"><?php if($title_link){echo $title_link;};?></a>
            <?php } ?>
        	<div class=" banner-title">        		
            	<?php if( $show_title ) { ?>
					<h3 class="heading-title"><?php echo $heading_title?></h3>
				<?php } ?>
                <?php if($sub_title){?><h1 class="sub-title"><?php echo $sub_title;?></h1><?php }?>
        	</div>
            <div class="description"><?php if($htmlcontent){echo $htmlcontent; }?></div>                      
        <!-- </div> -->
        </div>
    </div>
</div>


<?php 
	/*
	 * Template: Grid 2 Cols No Padding
	 */
?>
<section id="banner-main" class="pav-banner hidden-xs col-full"> 
	<div class="row">
		<div class="col-sm-5">
			<?php $num = 0; $thumb = $objimg->resize($banners[$num]['image'], 488, 90);?>
			<?php if(isset($banners[$num])) { ?>
			<div class="box effect">
				<a class="overlay" href="#">&nbsp;</a>
				<a href="<?php echo $banners[$num]['link']; ?>"><img class="img-responsive img-banner" src="<?php echo $thumb; ?>"/></a>
			</div>
			<?php } ?>
		</div>

		<div class="col-sm-7">
			<?php $num = 1; $thumb = $objimg->resize($banners[$num]['image'], 682, 90);?>
			<?php if(isset($banners[$num])) { ?>
			<div class="box effect">
				<a class="overlay" href="#">&nbsp;</a>
				<a href="<?php echo $banners[$num]['link']; ?>"><img class="img-responsive img-banner" src="<?php echo $thumb; ?>"/></a>
			</div>
			<?php } ?>
		</div>	
	</div> 
</section>

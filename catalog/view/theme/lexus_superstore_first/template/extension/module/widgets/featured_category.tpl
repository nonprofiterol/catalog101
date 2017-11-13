<div class="panel featured-category <?php echo $addition_cls?>">
	<?php if( $show_title ) { ?>
	<div class="widget-heading panel-heading"><h4 class="panel-title"><?php echo $heading_title?></h4></div>
	<?php } ?>

	<?php if(!empty($categories)) { ?>
		<div class="panel-body">
			<ul class="list-unstyled">
				<?php foreach ($categories as $category): ?>
				<li>
					<div class="image pull-left">
						<a href="<?php echo $category['href']; ?>">
							<?php if ($category['image'] !== '') { ?>
							<img src="image/<?php echo $category['image']; ?>" alt="" class="img-responsive">
							<?php
							} ?>
						</a>
					</div>
					
					<div class="caption">
						<h6><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h6>
						<div class="item"><a class="text-lighten" href="<?php echo $category['href']; ?>">[<?php echo $category['items']; ?>]</a></div>
					</div>						
				</li>
				<?php endforeach ?>
			</ul>
		</div>
	<?php } ?>
</div>
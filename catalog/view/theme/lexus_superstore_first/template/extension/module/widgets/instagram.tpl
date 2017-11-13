<?php

$config  = array(
    'i_username'  => $i_username,
    'i_token' => $i_token,
);

$default = array(
    'i_username'  => "1213565508",
    'i_token' => "1213565508.1677ed0.e31553e458274a178d41daa1968e9671",
);
$config = array_merge($default, $config);

// get user name http://jelled.com/instagram/lookup-user-id
$user_id= $config['i_username'];
// get token //http://instagram.pixelunion.net/
$access_token = $config['i_token'];

$url = "https://api.instagram.com/v1/users/".$user_id."/media/recent?access_token=".$access_token;

$ch = curl_init($url);

curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 20);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

$json = curl_exec($ch);

curl_close($ch);
$result = json_decode($json);
//echo "<pre>"; print_r($result); die;
?>

<?php $id = uniqid(); ?>
<div class="widget-raw-html instagram effect-carousel">
	<div class="panel panel-v4<?php echo $addition_cls;?> <?php if ( isset($stylecls)&&$stylecls) { ?>box-<?php echo $stylecls; ?><?php } ?>">
		<?php if( $show_title ) { ?>
		<div class="widget-heading panel-heading">
			<h4 class="panel-title"><?php echo $heading_title?></h4>
		</div>
		<?php } ?>
	

		<div class="box-products owl-carousel-play" id="instagram-<?php echo $id;?>" data-ride="owlcarousel">
		    <div class="owl-carousel  products-block" data-show="<?php echo ($columns_count); ?>" data-pagination="false" data-navigation="true">
		    
				<?php foreach ($result->data as $post) { ?>
				<div class="item">
				<a href="<?php echo $post->link;?>">
					<img class="img-responsive" src="<?php echo $post->images->low_resolution->url;; ?>" alt="">
				</a>
				</div>
				<?php } ?>
		    </div>

		    <?php if( count($result->data) > $columns_count ) { ?>	
			<div class="carousel-controls-v1">
				<a class="carousel-control left" href="#instagram-<?php echo $id;?>"   data-slide="prev">
						<i class="fa fa-chevron-left"></i>
				</a>
				<a class="right carousel-control" href="#instagram-<?php echo $id;?>"  data-slide="next">
							<i class="fa fa-chevron-right"></i>
				</a>
			</div>

			<?php } ?>
	    </div>
	</div>    
</div>


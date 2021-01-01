<?php
if(!isset($_SESSION["cookies-alert"])) {
	?>
	<div class="alert alert-light alert-dismissible fade show fixed-bottom align-content-center" style="padding-left: 8rem; padding-right: 8rem;" role="alert">
		<div class="row">
			<div class="col-auto">
				<i class="fas fa-4x fa-cookie-bite align-content-center"> </i>
			</div>
			<div class="col">
				<h4 class="alert-heading">Ce site utilise des cookies</h4>
				<p>Ce site utilise de rares cookies pour certaines fonctionnalités. Si vous souhaitez cependant refuser toute utilisation des cookies, la différence sera moindre et vous pourrez profiter de l'espace utilisateur. Une icône <?php include("includes/cookies.php"); ?> s'affichera pour vous prévenir de l'utilisation des cookies.</p>
			</div>
		</div>
		<button type="button" class="close align-content-center" onclick="<?php $_SESSION["cookies-alert"] = true; ?>" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<?php
}
?>

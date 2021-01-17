<footer class="footer">
	<div class="row">
		<div class="col-sm-12 col-md-4">
			<img src="img/icon.png" height="256px" class="img" />
		</div>
		<div class="col-sm-12 col-md-8">
			<div class="row">
				<div class="col-sm-12 col-md-4">
					<h5 class="font-weight-bold">À propos de nous</h5>
					<a href="about.php" class="d-block footer-link">À propos de nous</a>
					<a href="join.php" class="d-block footer-link">Nous rejoindre</a>
					<a href="contact.php" class="d-block footer-link">Nous contacter</a>
				</div>
				<div class="col-sm-12 col-md-4">
					<h5 class="font-weight-bold">Catégories</h5><?php
					$categories = $db->query("SELECT * FROM categories");
					while($dataCategories = $categories->fetch())
					{
						?>
						<a href="category?id=<?php echo($dataCategories['id']); ?>" class="d-block footer-link"><?php echo($dataCategories['name']); ?></a>
						<?php
					}
					$categories->closeCursor();
					?>
				</div>
				<div class="col-sm-12 col-md-4 font-weight-bold">
					<h5 class="font-weight-bold">Rejoindre notre newsletter</h5>
					<div class="input-group" style="margin-top: 1rem;">
						<input type="email" class="form-control" placeholder="Votre e-mail" aria-label="Votre e-mail" aria-describedby="submit-newsletter">
						<div class="input-group-append">
							<button class="btn btn-outline-secondary" type="submit" id="submit-newsletter" data-trigger="focus" data-toggle="tooltip" title="Fonctionnalité non disponible pour le moment"><i class="fas fa-paper-plane"> </i></button>
						</div>
					</div>
					<a href="https://instagram.com/lepointk_off?igshid=tmvioijejrzq" data-toggle="tooltip" data-placement="left" data-delay="250" title="Notre compte Instagram"><i class="fab fa-instagram icon-join"></i></a>
					<a href="https://discord.gg/5NUZFbw" data-toggle="tooltip" data-placement="right" data-delay="250" title="Notre serveur Discord"><i class="fab fa-discord icon-join"></i></a>
				</div>
			</div>
			<?php
			$monthArray = ["janvier","février","mars","avril","mai","juin","juillet","août","septembre","octobre","novembre","décembre"];
			?>
			<p class="footer-copyright small">Copyright © <?php echo($monthArray[date("m")-1] . " " . date("Y")); ?> - Contenu déposé sous licence <a href="https://creativecommons.org/licenses/by-sa/4.0/" class="footer-link">CC-BY-SA 4.0</a></p>
		</div>
	</div>
</footer>

<?php include("includes/cookies-alert.php"); ?>

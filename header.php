<header class="sticky-top bg-white">
	<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<a class="navbar-brand" href="index.php">
				<img src="img/logo.png" class="navbar-brand-img" alt="Logo du journal Le Point K" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbar">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item">
						<a class="navbar-link" href="index.php"><i class="fas fa-home"></i> Accueil</a>
					</li>
					<li class="nav-item">
						<a class="navbar-link" href="index.php">Récents</a>
					</li>
					<li class="nav-item">
						<a class="navbar-link" href="index.php">Articles populaires</a>
					</li>
					<?php
					$categories = $db->query("SELECT * FROM categories WHERE menu = 1");
					while($dataCategories = $categories->fetch())
					{
						?>
						<li class="nav-item" style="border-bottom: 4px solid #<?php echo($dataCategories['color']); ?>;">
							<a class="navbar-link" href="category?id=<?php echo($dataCategories['id']); ?>"><?php echo($dataCategories['name']); ?></a>
						</li>
						<?php
					}
					
					$categories->closeCursor();
					?>

				</ul>
				<i class="fas fa-lg fa-search icon-search"> </i>
				<div class="dropdown">
					<i class="fas fa-lg fa-user icon-user" id="icon-user" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> </i>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="icon-user">
						<?php
						echo("");
						
						if(!isset($_SESSION["logged"]) or !$_SESSION["logged"]) {
							?>
							<a class="dropdown-item" href="login.php?type=connection">Se connecter</a>
							<a class="dropdown-item" href="login.php?type=inscription">Créer un compte</a>
							<?php
						}

						else {
							if(isset($_SESSION["writer"]) and $_SESSION["writer"]) {
								?>
								<a class="dropdown-item" href="edit-article.php?id=0">Créer un article</a>
								<a class="dropdown-item" href="upload-file.php">Importer un fichier</a>
								<?php
							}
							if(isset($_SESSION["admin"]) and $_SESSION["admin"]) {
								?>
								<a class="dropdown-item" href="account-management.php">Gérer les comptes</a>
								<?php
							}
							?>
							<a class="dropdown-item" href="account-settings.php">Paramètres du compte</a>
							<a class="dropdown-item" href="unlog.php">Se déconnecter</a>
							<?php
						}
						?>
					</div>
				</div>
			<i class="fas fa-lg fa-bars icon-menu"> </i>
			</div>
			
		</nav>
	</div>
</header>

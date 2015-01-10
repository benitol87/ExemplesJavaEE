<%@ page pageEncoding="UTF-8" %>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Exemples Java EE</a>
			</div>

			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li>
						<a href="/ExemplesJavaEE/index.jsp">Accueil</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Exemple 1
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/ExemplesJavaEE/jsp/exemple1/creerClient.jsp">Créer un client</a></li>
							<li><a href="/ExemplesJavaEE/jsp/exemple1/creerCommande.jsp">Créer une commande</a></li>
						</ul>
					</li>	
					<li>
						<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Exemple 2
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/ExemplesJavaEE/inscription">Inscription</a></li>
							<li><a href="/ExemplesJavaEE/connexion">Connexion</a></li>
							<li><a href="/ExemplesJavaEE/deconnexion">Deconnexion</a></li>
						</ul>
					</li>
					<li>
						<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Exemple 3
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/ExemplesJavaEE/upload">Upload</a></li>
							<li><a href="/ExemplesJavaEE/fichiers/test.txt">Download</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
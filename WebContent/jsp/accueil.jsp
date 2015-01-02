<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Création d'un client</title>
<link type="text/css" rel="stylesheet" href="/ExemplesJavaEE/inc/css/bootstrap.min.css" />
</head>
<body>
	<c:import url="/inc/header.inc.jsp" />
	
	<div class="well">
		<h1>Exemples</h1>
		
		<ul class="list-group">
			<li class="list-group-item">
				Exemple 1 : Formulaires de saisie d'informations sur un client ou une commande et affichage de ces infos
			</li>
			<li class="list-group-item">
				Exemple 2 : Inscription, connexion, déconnexion
			</li>
			<li class="list-group-item">
				Exemple 3 : Upload, download d'un fichier
			</li>
		</ul>
	</div>

	<c:import url="/inc/footer.inc.jsp" />
</body>
</html>
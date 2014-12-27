<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Création d'un client</title>
<link type="text/css" rel="stylesheet" href="../../inc/css/bootstrap.min.css" />
</head>
<body>
	<c:import url="/inc/header.inc.jsp" />
	
	<div>
		<form method="post" action="/ExemplesJavaEE/ex1/creationClient" class="well">
			<c:import url="/inc/inc_client_form.jsp" />
			<input class="btn btn-primary" type="submit" value="Valider" />
			<input class="btn btn-danger" type="reset" value="Remettre à zéro" /> <br />
		</form>
	</div>
	
	<c:import url="/inc/footer.inc.jsp" />
</body>
</html>
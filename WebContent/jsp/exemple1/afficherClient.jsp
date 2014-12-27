<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'un client</title>
        <link type="text/css" rel="stylesheet" href="/ExemplesJavaEE/inc/css/bootstrap.min.css" />
    </head>
    <body>
    	<c:import url="/inc/header.inc.jsp" />
    
		<div id="corps" class="well">
            <p class="info help-block">${ message }</p>
            <c:if test="${ !erreur }">
                <p>Nom : <c:out value="${ client.nom }"/></p>
                <p>Prénom : <c:out value="${ client.prenom }"/></p>
                <p>Adresse : <c:out value="${ client.adresse }"/></p>
                <p>Numéro de téléphone : <c:out value="${ client.telephone }"/></p>
                <p>Email : <c:out value="${ client.email }"/></p>
            </c:if>
        </div>
		
		<c:import url="/inc/footer.inc.jsp" />
    </body>
</html>
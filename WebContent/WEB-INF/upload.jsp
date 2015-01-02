<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Envoi de fichier</title>
        <link type="text/css" rel="stylesheet" href="/ExemplesJavaEE/inc/css/bootstrap.min.css" />
    </head>
    <body>
		<c:import url="/inc/header.inc.jsp" />
		
        <form class="well" action="<c:url value="/upload" />" method="post" enctype="multipart/form-data">
            <fieldset>
                <legend>Envoi de fichier</legend>

                <label class="control-label" for="description">Description du fichier</label>
                <input class="form-control" type="text" id="description" name="description" <c:out value="${fichier.description}"/> />
                <span class="text-danger">${form.erreurs['description']}</span>
                <br />

                <label class="control-label" for="fichier">Emplacement du fichier <span>*</span></label>
                <input type="file" id="fichier" name="fichier" <c:out value="${fichier.nom}"/> required/>
                <span class="text-danger">${form.erreurs['fichier']}</span>
                <br />
                
                <input class="btn btn-primary" type="submit" value="Envoyer" class="sansLabel" />
                <br />

				<p class="${empty form.erreurs ? 'text-success' : 'text-danger'}">${form.resultat}</p>
            </fieldset>
        </form>
        
        <c:import url="/inc/footer.inc.jsp" />
    </body>
</html>
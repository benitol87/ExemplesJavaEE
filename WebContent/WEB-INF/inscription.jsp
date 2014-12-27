<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Inscription</title>
        <link type="text/css" rel="stylesheet" href="/ExemplesJavaEE/inc/css/bootstrap.min.css" />
    </head>
    <body>
    	<c:import url="/inc/header.inc.jsp" />
    	
		<form class="well" method="post" action="inscription">
			<fieldset>
                <legend>Inscription</legend>
                <p class="help-block">Vous pouvez vous inscrire via ce formulaire.</p>

                <label class="control-label" for="email">Adresse email <span class="requis">*</span></label>
                <input class="form-control" type="email" id="email" name="email" value="" size="20" maxlength="60" />
                <span class="erreur">${erreurs['email']}</span>
                <br />

                <label class="control-label" for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input class="form-control" type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
                <span class="erreur">${erreurs['motdepasse']}</span>
                <br />

                <label class="control-label" for="confirmation">Confirmation du mot de passe <span class="requis">*</span></label>
                <input class="form-control" type="password" id="confirmation" name="confirmation" value="" size="20" maxlength="20" />
                <span class="erreur">${erreurs['confirmation']}</span>
                <br />

                <label class="control-label" for="nom">Nom d'utilisateur</label>
                <input class="form-control" type="text" id="nom" name="nom" value="" size="20" maxlength="20" />
                <span class="erreur">${erreurs['nom']}</span>
                <br />

                <input type="submit" value="Inscription" class="btn btn-primary" />
                <br />
            </fieldset>
        </form>
        
        <c:import url="/inc/footer.inc.jsp" />
    </body>
</html>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Connexion</title>
        <link type="text/css" rel="stylesheet" href="/ExemplesJavaEE/inc/css/bootstrap.min.css" />
    </head>
    <body>
    	<c:import url="/inc/header.inc.jsp" />
    
        <form class="well" method="post" action="connexion">
            <fieldset>
                <legend>Connexion</legend>
                <p class="help-block">Vous pouvez vous connecter via ce formulaire.</p>

                <label class="control-label" for="nom">Adresse email <span class="requis">*</span></label>
                <input class="form-control" type="email" id="email" name="email" value="<c:out value="${utilisateur.email}"/>" size="20" maxlength="60" />
                <span class="text-danger">${form.erreurs['email']}</span>
                <br />

                <label class="control-label" for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input class="form-control" type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
                <span class="text-danger">${form.erreurs['motdepasse']}</span>
                <br />

                <input class="btn btn-primary" type="submit" value="Connexion" class="sansLabel" />
                <br />
                
                <p class="${empty form.erreurs ? 'text-success' : 'text-danger'}">${form.resultat}</p>
                
                <%-- Vérification de la présence d'un objet utilisateur en session --%>
                <c:if test="${!empty sessionScope.sessionUtilisateur}">
                    <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
                    <p class="text-success">Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.email}</p>
                </c:if>
            </fieldset>
        </form>
        
        <c:import url="/inc/footer.inc.jsp" />
    </body>
</html>
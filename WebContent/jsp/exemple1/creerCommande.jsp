<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Création d'une commande</title>
<link type="text/css" rel="stylesheet" href="../../inc/css/bootstrap.min.css" />
</head>
<body>
	<c:import url="/inc/header.inc.jsp" />

	<div>
		<form method="post" action="/ExemplesJavaEE/ex1/creationCommande" class="well">
			<fieldset>
				<legend>Informations client</legend>
				<div class="form-group">

					<label for="nomClient" class="control-label">Nom <span class="requis">*</span></label> <input
						type="text" class="form-control" id="nomClient" name="nomClient" value="" size="20"
						maxlength="20" /> <br /> <label class="control-label" for="prenomClient">Prénom
					</label> <input type="text" class="form-control" id="prenomClient" name="prenomClient" value=""
						size="20" maxlength="20" /> <br /> <label class="control-label" for="adresseClient">Adresse
						de livraison <span class="requis">*</span>
					</label> <input type="text" class="form-control" id="adresseClient" name="adresseClient"
						value="" size="20" maxlength="20" /> <br /> <label class="control-label"
						for="telephoneClient">Numéro de téléphone <span
						class="requis">*</span>
					</label> <input type="text" class="form-control" id="telephoneClient" name="telephoneClient"
						value="" size="20" maxlength="20" /> <br /> <label class="control-label"
						for="emailClient">Adresse email</label> <input class="form-control" type="email"
						id="emailClient" name="emailClient" value="" size="20"
						maxlength="60" /> <br />
				</div>
			</fieldset>
			<fieldset>
				<legend>Informations commande</legend>
				<div class="form-group">

					<label class="control-label" for="dateCommande">Date <span class="requis">*</span></label>
					<input type="text" class="form-control" id="dateCommande" name="dateCommande" value=""
						size="20" maxlength="20" disabled /> <br /> <label class="control-label"
						for="montantCommande">Montant <span class="requis">*</span></label>
					<input type="text" class="form-control" id="montantCommande" name="montantCommande"
						value="" size="20" maxlength="20" /> <br /> <label class="control-label"
						for="modePaiementCommande">Mode de paiement <span
						class="requis">*</span></label> <input type="text" class="form-control"
						id="modePaiementCommande" name="modePaiementCommande" value=""
						size="20" maxlength="20" /> <br /> <label class="control-label"
						for="statutPaiementCommande">Statut du paiement</label> <input
						type="text" class="form-control" id="statutPaiementCommande"
						name="statutPaiementCommande" value="" size="20" maxlength="20" />
					<br /> <label class="control-label" for="modeLivraisonCommande">Mode de
						livraison <span class="requis">*</span>
					</label> <input type="text" class="form-control" id="modeLivraisonCommande"
						name="modeLivraisonCommande" value="" size="20" maxlength="20" />
					<br /> <label class="control-label" for="statutLivraisonCommande">Statut de la
						livraison</label> <input type="text" class="form-control" id="statutLivraisonCommande"
						name="statutLivraisonCommande" value="" size="20" maxlength="20" />
					<br />
				</div>
			</fieldset>
			<input class="btn btn-primary" type="submit" value="Valider" /> <input class="btn btn-danger" type="reset"
				value="Remettre à zéro" /> <br />
		</form>
	</div>
	
	<c:import url="/inc/footer.inc.jsp" />
</body>
</html>
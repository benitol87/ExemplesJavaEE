<%@ page pageEncoding="UTF-8" %>
<fieldset>
	<legend>Informations client</legend>
	<div class="form-group">


		<label for="nomClient" class="control-label">Nom <span
			class="requis">*</span></label> <input class="form-control" type="text"
			id="nomClient" name="nomClient" value="" size="20" maxlength="20" />
		<br /> <label for="prenomClient" class="control-label">Prénom
		</label> <input class="form-control" type="text" id="prenomClient"
			name="prenomClient" value="" size="20" maxlength="20" /> <br /> <label
			for="adresseClient">Adresse de livraison <span class="requis">*</span>
		</label> <input class="form-control" type="text" id="adresseClient"
			name="adresseClient" value="" size="20" maxlength="20" /> <br /> <label
			for="telephoneClient" class="control-label">Numéro de
			téléphone <span class="requis">*</span>
		</label> <input class="form-control" type="text" id="telephoneClient"
			name="telephoneClient" value="" size="20" maxlength="20" /> <br />

		<label for="emailClient" class="control-label">Adresse email</label> <input
			class="form-control" type="email" id="emailClient" name="emailClient"
			value="" size="20" maxlength="60" /> <br />
	</div>
</fieldset>
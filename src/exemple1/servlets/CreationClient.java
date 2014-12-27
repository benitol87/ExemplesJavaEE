package exemple1.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exemple1.beans.Client;

@WebServlet("/ex1/creationClient")
public class CreationClient extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* Constantes */
	public static final String CHAMP_NOM = "nomClient";
	public static final String CHAMP_PRENOM = "prenomClient";
	public static final String CHAMP_ADRESSE = "adresseClient";
	public static final String CHAMP_TELEPHONE = "telephoneClient";
	public static final String CHAMP_EMAIL = "emailClient";

	public static final String ATT_CLIENT = "client";
	public static final String ATT_MESSAGE = "message";
	public static final String ATT_ERREUR = "erreur";

	public static final String VUE = "/jsp/exemple1/afficherClient.jsp";

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		/*
		 * R�cup�ration des donn�es saisies, envoy�es en tant que param�tres de
		 * la requ�te POST g�n�r�e � la validation du formulaire
		 */
		String nom = request.getParameter( CHAMP_NOM );
        String prenom = request.getParameter( CHAMP_PRENOM );
        String adresse = request.getParameter( CHAMP_ADRESSE );
        String telephone = request.getParameter( CHAMP_TELEPHONE );
        String email = request.getParameter( CHAMP_EMAIL );

		String lien = "/ExemplesJavaEE/jsp/exemple1/creerClient.jsp";
		
		String message;
		boolean erreur;
		/*
		 * Initialisation du message � afficher : si un des champs obligatoires
		 * du formulaire n'est pas renseign�, alors on affiche un message
		 * d'erreur, sinon on affiche un message de succ�s
		 */
		if (nom.trim().isEmpty() || adresse.trim().isEmpty()
				|| telephone.trim().isEmpty()) {
			message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\""
					+ lien
					+ "\">Cliquez ici</a> pour accéder au formulaire de création d'un client.";
			erreur = true;
		} else {
			message = "Client créé avec succès !";
			erreur = false;
		}
		/*
		 * Cr�ation du bean Client et initialisation avec les donn�es r�cup�r�es
		 */
		Client client = new Client();
		client.setNom(nom);
		client.setPrenom(prenom);
		client.setAdresse(adresse);
		client.setTelephone(telephone);
		client.setEmail(email);

		/* Ajout du bean et du message � l'objet requ�te */
		request.setAttribute( ATT_CLIENT, client );
        request.setAttribute( ATT_MESSAGE, message );
        request.setAttribute( ATT_ERREUR, erreur );
        
		/* Transmission � la page JSP en charge de l'affichage des donn�es */
		this.getServletContext()
				.getRequestDispatcher(VUE)
				.forward(request, response);
	}
}

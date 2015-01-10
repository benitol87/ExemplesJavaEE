package exemple2.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exemple2.beans.Utilisateur;
import exemple2.form.InscriptionForm;

@WebServlet(name="Inscription", urlPatterns={"/inscription"})
public class Inscription extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	public static final String VUE      = "/WEB-INF/inscription.jsp";
	public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
    	response.setContentType("text/html;charset=UTF-8");
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	/* Préparation de l'objet formulaire */
        InscriptionForm form = new InscriptionForm();
		
        /* Appel au traitement et à la validation de la requête, et récupération du bean en résultant */
        Utilisateur utilisateur = form.inscrireUtilisateur( request );
		
        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, utilisateur );
		
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    
}

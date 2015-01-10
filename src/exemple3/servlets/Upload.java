package exemple3.servlets;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exemple3.beans.Fichier;
import exemple3.form.UploadForm;

/**
 * Servlet implementation class Upload
 */
@WebServlet(name="Upload", urlPatterns={"/upload"}, initParams= {@WebInitParam(name="chemin", value="C:\\fichiers\\")})
@MultipartConfig
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/upload.jsp";
	public static final String CHAMP_DESCRIPTION = "description";
	public static final String CHAMP_FICHIER     = "fichier";
	public static final String CHEMIN        = "chemin";
    public static final String ATT_FICHIER = "fichier";
    public static final String ATT_FORM    = "form";
	public static final int TAILLE_TAMPON = 10240; // 10 ko
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
    }

	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
		/* Affichage de la page d'envoi de fichiers */
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}
	
	public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
		/*
         * Lecture du paramètre 'chemin' passé à la servlet via la déclaration
         * dans le web.xml
         */
        String chemin = this.getServletConfig().getInitParameter( CHEMIN );

        /* Préparation de l'objet formulaire */
        UploadForm form = new UploadForm();

        /* Traitement de la requête et récupération du bean en résultant */
        Fichier fichier = form.enregistrerFichier( request, chemin );

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_FICHIER, fichier );

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}
}

package raizak.session17.certificatif.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import raizak.session17.certificatif.bean.Client;
import raizak.session17.certificatif.service.Service;
import raizak.session17.certificatif.service.ServiceCRUD;
import raizak.session17.certificatif.service.ServiceDAO;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CONNEXION = "connexion";
	private static final String AJOUT_COMPTE = "ajoutUser";
	private final String PROPERTIES = "res";
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		try {
			// Charge la map des user dans le fichier xml 
			Map<String, Client> mapUser = ServiceDAO.chargeXml(ServiceDAO.getValue(14,PROPERTIES));
			switch("ajoutUser"){
			
			case CONNEXION:
				// Si tu veux tu peux faire la validation de la connexion haha 
				break;
				
			case AJOUT_COMPTE:
				// Map qui contient tous les champs du formulaire et la map des user
				boolean[] tabValide = Service.validationIncription(request.getParameterMap(), mapUser); 
				boolean valide = true;
				
				for(int i=1;i<tabValide.length;i++){ 
					System.out.println(ServiceDAO.getValue(i,PROPERTIES)+" : "+tabValide[i]);
					// On vérifie quels sont les champs valide ou invalide
					request.setAttribute(ServiceDAO.getValue(i,PROPERTIES),tabValide[i] ? "" : ServiceDAO.getValue(15,PROPERTIES));
					valide&=tabValide[i]; 
				}
				
				System.out.println(valide);
				
				// Si les champs sont valides
				if(valide){
					/*ServiceCRUD.addObject(new Client(request.getParameter(ServiceDAO.getValue(1, PROPERTIES)),
							request.getParameter(ServiceDAO.getValue(2, PROPERTIES)),
							request.getParameter(ServiceDAO.getValue(3, PROPERTIES)),
							request.getParameter(ServiceDAO.getValue(4, PROPERTIES)),
							request.getParameter(ServiceDAO.getValue(6, PROPERTIES)),
							Integer.parseInt(request.getParameter(ServiceDAO.getValue(5, PROPERTIES)))), mapUser);*/ //ajout d'un user dans la map 
					ServiceCRUD.addObject(new Client(), mapUser);
					System.out.println("est vide "+mapUser.isEmpty());
					System.out.println(mapUser.get(request.getParameter("email")).getId());
					//ServiceDAO.creationXml(ServiceDAO.getValue(14,PROPERTIES), mapUser);
					
				}
				// Affiche la page de résultat en fonction des champs valides
				request.getRequestDispatcher(valide ?ServiceDAO.getValue(11,PROPERTIES) :  ServiceDAO.getValue(12,PROPERTIES)).forward(request, response);
				
				break;
				
			default:
				request.getRequestDispatcher(ServiceDAO.getValue(10,PROPERTIES)).forward(request, response);
				break;
		}
		
		} catch (Exception e) {
			
		}
		
		
	}
	
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}

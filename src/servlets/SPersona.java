package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Persona;
import dao.interfaces.PersonaDao;
import daofactory.DAOFactory;

/**
 * Servlet implementation class SPersona
 */
@WebServlet({ "/SPersona", "/Grabar", "/BuscarPersona","/EliminarPersona","/EditarPersona"})
public class SPersona extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*switch (request.getServletPath()) {
		  case "/Grabar":
	      try {
			grabar(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	      break;
	      
		  case "/BuscarPersona":
			  try {
				buscarPersona(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  break;
		  
		  case "/EliminarPersona":
				eliminarPersona(request,response);
		  break;
		  
		  case "/EditarPersona":
			  editarPersona(request,response);
		  break;
		}
	}
	
	private void editarPersona(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id1");			System.out.println("id editar: "+id);
		String nombre=request.getParameter("nombre1");	System.out.println("nombre: "+nombre);
		String apepat=request.getParameter("apepat1");	System.out.println("apepat: "+apepat);
		String apemat=request.getParameter("apemat1");	System.out.println("apemat: "+apemat);
		String tipdoc=request.getParameter("tipdoc1");	System.out.println("tipdoc: "+tipdoc);
		String numdoc=request.getParameter("numdoc1");	System.out.println("numdoc: "+numdoc);
		
		Persona x = new Persona(Integer.parseInt(id), nombre, apepat, apemat, tipdoc, numdoc);
		
		DAOFactory dao=DAOFactory.getDAOFactory(DAOFactory.MYSQL);		
		PersonaDao pdao=dao.getPersonaDao();		
		try {
			pdao.updatePersona(x);
		} catch (Exception e) {
			System.out.println("mensaje update de servlet: "+e.getMessage());
		}
		RequestDispatcher rd;
	    rd = request.getRequestDispatcher("/Persona/BuscarPersona.jsp");
	    rd.forward(request, response);
	}

	private void eliminarPersona(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");System.out.println("id en Servlet:"+id);			
		DAOFactory dao=DAOFactory.getDAOFactory(DAOFactory.MYSQL);		
		PersonaDao pdao=dao.getPersonaDao();
		try {
			pdao.deletePersona(Integer.parseInt(id));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd;
	    rd = request.getRequestDispatcher("/Persona/RegistrarPersona.jsp");
	    rd.forward(request, response);	 	
	}

	private void buscarPersona(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");System.out.println("id en Servlet:"+id);
		//Persona xx = new Persona(Integer.parseInt(id));System.out.println("");
		
		HttpSession sesion = request.getSession();
		Persona per;
		if(sesion.getAttribute("per")==null){
			per = new Persona();
		} else {
			per = (Persona) sesion.getAttribute("per");
		}
		
		try {
			DAOFactory dao=DAOFactory.getDAOFactory(DAOFactory.MYSQL);		
			PersonaDao pdao=dao.getPersonaDao();
			
			per =pdao.selectPersona(Integer.parseInt(id));System.out.println("ejecuta pdao.selectPersona");
			
			sesion.setAttribute("per", per);
			System.out.println("dato_per: "+per.getNombre());
		} catch (Exception e) {
			System.out.println("mensaje servlet:"+e.getMessage());
		}
		RequestDispatcher rd;
	    rd = request.getRequestDispatcher("/Persona/BuscarPersona.jsp");
	    rd.forward(request, response);
	}

	private void grabar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String nombre=request.getParameter("nombre");
		String apepat=request.getParameter("apepat");
		String apemat=request.getParameter("apemat");
		String tipdoc=request.getParameter("tipdoc");
		String numdoc=request.getParameter("numdoc");
		
		Persona x = new Persona(Integer.parseInt(id), nombre, apepat, apemat, tipdoc, numdoc);

		HttpSession session = request.getSession();
		
		DAOFactory dao=DAOFactory.getDAOFactory(DAOFactory.MYSQL);
		
		PersonaDao pdao=dao.getPersonaDao();
		
		int flag=-1;
		flag=pdao.create(x);
		if(flag  > 0){
			session.setAttribute("mensaje",  "Persona agregada.");
		}else{
			session.setAttribute("mensaje",  "Error."); 
		}
		RequestDispatcher rd;
	    rd = request.getRequestDispatcher("/Persona/RegistrarPersona.jsp");
	    rd.forward(request, response);	 	
	} 
	
	
	*
	*/

	

	}
}

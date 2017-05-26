package servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.DetusuescBean;
import bean.UsuarioBean;
import dao.interfaces.I_Usuario;
import daofactory.DAOFactory;


@WebServlet("/Login")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		Vector<DetusuescBean> listaSesion= new  Vector<DetusuescBean>();
		listaSesion=(Vector<DetusuescBean>) session.getAttribute("usuario");
		
		if(listaSesion.size()>0){
			try {
				if(listaSesion.get(0).getPerfbean().getNombre().equals("administrador")){
					request.getRequestDispatcher("/Administrador/Inicio.jsp").forward(request, response);
				}else if(listaSesion.get(0).getPerfbean().getNombre().equals("director")){
					request.getRequestDispatcher("/Director/Inicio.jsp").forward(request, response);
				}
			} catch (Exception e) {
				out.println(e.getMessage());
			}
		}else{
			request.setAttribute("mensaje", "Ingrese nuevamente.");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try{
			
			String uss=request.getParameter("user").replaceAll("' or '", "");
			String pass= request.getParameter("pass").replaceAll("' or '", "");
			if(uss.equals("")||pass.equals("")){
				request.setAttribute("mensaje", "Ingrese su usuario y clave");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}else{
				DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
				I_Usuario usuariodao = dao.getUsuario();
				Vector<DetusuescBean> listaSesion= new  Vector<DetusuescBean>();
				listaSesion=usuariodao.validar(uss,pass);
				if(listaSesion.size()>0){
					HttpSession session= request.getSession();
					session.setMaxInactiveInterval(-1);
					session.setAttribute("usuario", listaSesion);
					if(listaSesion.get(0).getPerfbean().getNombre().equals("administrador")){
						request.getRequestDispatcher("/Administrador/Inicio.jsp").forward(request, response);
					}else if(listaSesion.get(0).getPerfbean().getNombre().equals("director")){
						request.getRequestDispatcher("/Director/Inicio.jsp").forward(request, response);
					}
				}else{
					request.setAttribute("mensaje", "Datos Incorrectos");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
				}
			}
		}catch (Exception e) {
			out.print("ERROR LOGIN : "+e.getMessage());
			e.printStackTrace();
		}	
	}
}

package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Docente;
import dao.interfaces.DocenteDao;
import daofactory.DAOFactory;

/**
 * Servlet implementation class SDocente
 */
@WebServlet({ "/SDocente", "/RegistrarDocente","/BuscarDocente","/BuscarDocente1","/EliminarDocente",
	"/ActualizarDocente","/CancelarEditarDocente","/CancelarBuscarDocente"})
public class SDocente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		switch (request.getServletPath()) {
		  case "/RegistrarDocente":
	      try {
			grabar(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	      break;
	      //
		  case "/BuscarDocente":
			  buscar(request,response);
		  break;
		  //
		  case "/BuscarDocente1":
			  //buscar1(request,response);
			  buscarEditar(request,response);
		  break;
		  //
		  case "/EliminarDocente":
			  eliminar(request,response);
		  break;
		  //
		  case "/ActualizarDocente":
			  actualizar(request,response);
		  break;
		  //
		  case "/CancelarEditarDocente":
			  cancelarEditar1(request,response);
		  break;
		  //
		  case "/CancelarBuscarDocente":
			  cancelarBuscar(request,response);
		  break;
		}
		
		if(request.getParameter("btnCancelarEditar")!=null){
			this.cancelarEditar(request,response);
		}
	}

	private void cancelarEditar1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();

		Docente doc;
		if(sesion.getAttribute("doc")==null){
			doc = new Docente();System.out.println("nombreBean: "+doc.getNombre());
		} else {
			doc = (Docente) sesion.getAttribute("doc");
		}				
		sesion.invalidate();System.out.println("destruye sesion.");

		response.sendRedirect("Docente/Editar_Docente.jsp");		
	}
	
	private void cancelarBuscar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		Docente doc;
		if(sesion.getAttribute("doc")==null){
			doc = new Docente();System.out.println("nombreBean: "+doc.getNombre());
		} else {
			doc = (Docente) sesion.getAttribute("doc");
		}				
		sesion.invalidate();System.out.println("destruye sesion.");
		response.sendRedirect("Maestro/Maestro.jsp");		
	}

	private void cancelarEditar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();

		Docente doc;
		if(sesion.getAttribute("doc")==null){
			doc = new Docente();System.out.println("nombreBean: "+doc.getNombre());
		} else {
			doc = (Docente) sesion.getAttribute("doc");
		}				
		sesion.invalidate();System.out.println("destruye sesion.");
		RequestDispatcher rd;
	    //rd = request.getRequestDispatcher("/Docente/Nuevo_Docente.jsp");
		rd = request.getRequestDispatcher("index.jsp");
	    rd.forward(request, response);	
	}

	private void grabar(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
//		String nombre=request.getParameter("txtnom");System.out.println("nombre: "+nombre);
//		String apepat=request.getParameter("txtapepat");
//		String apemat=request.getParameter("txtapemat");
//		String nac=request.getParameter("txtnac");
//		long numdoc=Long.parseLong(request.getParameter("txtnumdoc"));
//		String fecini=request.getParameter("txtfecini");
//		String ley=request.getParameter("txtley");
//		String maygra=request.getParameter("txtmaygra");
//		String menmaygra=request.getParameter("txtmenmay");
//		String uni=request.getParameter("txtuni");
//		String paiuni=request.getParameter("txtpaiuni");
//		String pregrado=request.getParameter("pregrado");
//		String maestria=request.getParameter("maestria");
//		String doctor=request.getParameter("doctor");
//		String cat=request.getParameter("txtcat");
//		String regded=request.getParameter("txtregded");
//		int horcla=Integer.parseInt(request.getParameter("txthorcla"));
//		int horact=Integer.parseInt(request.getParameter("txthoract"));
//		int tothor=Integer.parseInt(request.getParameter("txttothor"));
//		String docinv=request.getParameter("txtdocinv");
//		String dina=request.getParameter("txtdina");
//		String peraca=request.getParameter("txtperaca");
//		String obs=request.getParameter("txtobs");
		String nombre=request.getParameter("nombre");System.out.println("nombre: "+nombre);
		String apepat=request.getParameter("apepat");
		String apemat=request.getParameter("apemat");
		String nac=request.getParameter("nac");
		long numdoc=Long.parseLong(request.getParameter("numdoc"));
		String fecini=request.getParameter("fecini");
		String ley=request.getParameter("ley");
		String maygra=request.getParameter("maygra");
		String menmaygra=request.getParameter("menmay");
		String uni=request.getParameter("uni");
		String paiuni=request.getParameter("paiuni");
		String pregrado=request.getParameter("preg");
		String maestria=request.getParameter("maes");
		String doctor=request.getParameter("doct");
		String cat=request.getParameter("cat");
		String regded=request.getParameter("regded");
		int horcla=Integer.parseInt(request.getParameter("horcla"));
		int horact=Integer.parseInt(request.getParameter("horact"));
		int tothor=Integer.parseInt(request.getParameter("tothor"));
		String docinv=request.getParameter("docinv");
		String dina=request.getParameter("dina");
		String peraca=request.getParameter("peraca");
		String obs=request.getParameter("obs");
		
		Docente bean = new Docente(nombre.toUpperCase(),apepat.toUpperCase(),apemat.toUpperCase(),
				nac.toUpperCase(),numdoc,fecini,ley,maygra.toUpperCase(),menmaygra.toUpperCase(),
				uni.toUpperCase(),paiuni.toUpperCase(),
				pregrado,maestria,doctor,cat,regded,
				horcla,horact,tothor,docinv,dina,peraca,obs);
		String valor="";				
		try {
			//HttpSession session = request.getSession();			
			DAOFactory dao=DAOFactory.getDAOFactory(DAOFactory.MYSQL);			
			DocenteDao ddao=dao.getDocenteDao();
			
			boolean flag=false;
			
			flag=ddao.createDocente(bean);
			
			if(flag == false) {valor = "xxx"; }
			else {				
				valor = "Ingreso de docente satisfactorio.";
//						doc.getNombre() + " -|" + doc.getApepat() + " -|" + doc.getApemat() + " -|" +
//						doc.getPais() + " -|" + doc.getNumdoc() +"-|"+ doc.getFecini() +"-|"+ doc.getLey() +"-|"+ 
//						doc.getMaygra() +"-|"+ doc.getMenmay() +"-|"+ doc.getUni() +"-|"+ doc.getPaiuni() +"-|"+
//						doc.getPregrado() +"-|"+ doc.getMaestria() +"-|"+ doc.getDoctorado() +"-|"+ doc.getCat() +"-|"+
//						doc.getRegded() +"-|"+ doc.getHorcla() +"-|"+ doc.getHoract() +"-|"+ doc.getTothor() +"-|"+
//						doc.getDocinv() +"-|"+ doc.getDina() +"-|"+ doc.getPeraca() +"-|"+ doc.getObs();
			}		
			
			
			//sesion.setAttribute("doc", doc);
			
//			if(flag==true){
//				session.setAttribute("mensaje",  "Docente agregado.");
//			}else{
//				session.setAttribute("mensaje",  "Error."); 
//			}
			//RequestDispatcher rd;
		    //rd = request.getRequestDispatcher("/Docente/Nuevo_Docente.jsp");
			//rd = request.getRequestDispatcher("index.jsp");
		    //rd.forward(request, response);	
			//response.sendRedirect("Maestro/Maestro.jsp");
			
		} catch (Exception e) {
			System.out.println(""+e.getMessage());
		}
		response.setContentType("text/plain");
		response.getWriter().write(valor);
	}
	
	private void buscar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//String numdoc=request.getParameter("id");System.out.println("id  "+numdoc);
		
		
//		
//		String id=request.getParameter("id");System.out.println("id en Servlet:"+id);
//		String nombre=request.getParameter("txtnom");System.out.println("nombre BuscarDocente:"+nombre);
//		String apepat=request.getParameter("txtapepat");
//		String apemat=request.getParameter("txtapemat");
		//String numdoc=request.getParameter("txtnumdoc");
		String nombre=request.getParameter("nombre");System.out.println("nombre BuscarDocente:"+nombre);
		String apepat=request.getParameter("apepat");
		String apemat=request.getParameter("apemat");
		String numdoc=request.getParameter("id");
		if (numdoc.length()<=0){
			numdoc="0";
		} else {
			numdoc=request.getParameter("id");
		}
		
		//HttpSession sesion = request.getSession();

		Docente doc;
		//if(sesion.getAttribute("doc")==null){
			doc = new Docente(nombre,apepat,apemat,Long.parseLong(numdoc));System.out.println("nombreBean: "+doc.getNombre());
		//} else {
		//	doc = (Docente) sesion.getAttribute("doc");
		//}
		
		String valor = "";
		
		try {
			
			DAOFactory dao=DAOFactory.getDAOFactory(DAOFactory.MYSQL);		
			
			DocenteDao pdao=dao.getDocenteDao();
			
			doc = pdao.selectDocente(doc);System.out.println("ejecuta pdao.selectDocente");
			
			System.out.println("Valor : " + doc.getFecini());
			
			if(doc.getNombre() == null) {valor = "xxx"; }
			else {
//			valor = doc.getNombre() + " -|" + doc.getApepat() + " -|" + doc.getApemat() + " -|" +
//					doc.getPais() + " -|" + ""+doc.getNumdoc() + " -|" + doc.getFecini()+ " -|" +
//					doc.getLey()+ " -|" +doc.getMaygra();
				
				valor = doc.getNombre() + " -|" + doc.getApepat() + " -|" + doc.getApemat() + " -|" +
						doc.getPais() + " -|" + doc.getNumdoc() +"-|"+ doc.getFecini() +"-|"+ doc.getLey() +"-|"+ 
						doc.getMaygra() +"-|"+ doc.getMenmay() +"-|"+ doc.getUni() +"-|"+ doc.getPaiuni() +"-|"+
						doc.getPregrado() +"-|"+ doc.getMaestria() +"-|"+ doc.getDoctorado() +"-|"+ doc.getCat() +"-|"+
						doc.getRegded() +"-|"+ doc.getHorcla() +"-|"+ doc.getHoract() +"-|"+ doc.getTothor() +"-|"+
						doc.getDocinv() +"-|"+ doc.getDina() +"-|"+ doc.getPeraca() +"-|"+ doc.getObs();
			}		
			
			
			//sesion.setAttribute("doc", doc);
			
		} catch (Exception e) {
			System.out.println("mensaje servlet:"+e.getMessage());
		}
		//RequestDispatcher rd;
	    //rd = request.getRequestDispatcher("/Docente/Buscar_Docente.jsp");
		//rd = request.getRequestDispatcher("/Docente/Buscar_Docente.jsp");
	    //rd.forward(request, response);
	    
	    //response.sendRedirect("Docente/Buscar_Docente.jsp");
	    
	    //sesion.invalidate();
		
		response.setContentType("text/plain");
		response.getWriter().write(valor);
	}
	
	private void buscar1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String id=request.getParameter("id");System.out.println("id en Servlet:"+id);
		String nombre=request.getParameter("nombre");System.out.println("nombre BuscarDocente:"+nombre);
		String apepat=request.getParameter("apepat");
		String apemat=request.getParameter("apemat");
		String numdoc=request.getParameter("numdoc");
		if (numdoc.length()<=0){
			numdoc="0";
		} else {
			numdoc=request.getParameter("id");
		}
		
		HttpSession sesion = request.getSession();
		Docente doc;
		if(sesion.getAttribute("doc")==null){
			doc = new Docente(nombre,apepat,apemat,Long.parseLong(numdoc));System.out.println("nombreBean: "+doc.getNombre());
		} else {
			doc = (Docente) sesion.getAttribute("doc");
		}
		
		try {
			DAOFactory dao=DAOFactory.getDAOFactory(DAOFactory.MYSQL);		
			DocenteDao pdao=dao.getDocenteDao();
			
			doc =pdao.selectDocente(doc);System.out.println("ejecuta pdao.selectDocente");
			
			sesion.setAttribute("doc", doc);
			System.out.println("dato_doc: "+doc.getNombre());
		} catch (Exception e) {
			System.out.println("mensaje servlet:"+e.getMessage());
		}
		//RequestDispatcher rd;
	    //rd = request.getRequestDispatcher("/Docente/Buscar_Docente.jsp");
		//rd = request.getRequestDispatcher("/Docente/Buscar_Docente.jsp");
	    //rd.forward(request, response);
	    
	    response.sendRedirect("Docente/Editar_Docente.jsp");
	    
	    //sesion.invalidate();
	}
	
	
	private void buscarEditar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String id=request.getParameter("id");System.out.println("id en Servlet:"+id);
		String nombre=request.getParameter("nombre");System.out.println("nombre BuscarDocente:"+nombre);
		String apepat=request.getParameter("apepat");
		String apemat=request.getParameter("apemat");
		String numdoc=request.getParameter("numdoc");
		
		HttpSession sesion = request.getSession();
		Docente doc;
		doc = new Docente(nombre,apepat,apemat,Long.parseLong(numdoc));System.out.println("nombreBean: "+doc.getNombre());
		String valor="";
		try {
			DAOFactory dao=DAOFactory.getDAOFactory(DAOFactory.MYSQL);		
			DocenteDao pdao=dao.getDocenteDao();
			
			doc =pdao.selectDocente(doc);System.out.println("ejecuta pdao.selectDocente");			

			if(doc.getNombre() == null) {valor = "xxx"; }
			else {				
				valor = doc.getNombre() + " -|" + doc.getApepat() + " -|" + doc.getApemat() + " -|" +
						doc.getPais() + " -|" + doc.getNumdoc() +"-|"+ doc.getFecini() +"-|"+ doc.getLey() +"-|"+ 
						doc.getMaygra() +"-|"+ doc.getMenmay() +"-|"+ doc.getUni() +"-|"+ doc.getPaiuni() +"-|"+
						doc.getPregrado() +"-|"+ doc.getMaestria() +"-|"+ doc.getDoctorado() +"-|"+ doc.getCat() +"-|"+
						doc.getRegded() +"-|"+ doc.getHorcla() +"-|"+ doc.getHoract() +"-|"+ doc.getTothor() +"-|"+
						doc.getDocinv() +"-|"+ doc.getDina() +"-|"+ doc.getPeraca() +"-|"+ doc.getObs() +"-|"+ doc.getId();
			}		
		} catch (Exception e) {
			System.out.println("mensaje servlet:"+e.getMessage());
		}
		response.setContentType("text/plain");
		response.getWriter().write(valor);	    
	}
	
	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String id=request.getParameter("txtid");System.out.println("id en Servlet:"+id);			
		DAOFactory dao=DAOFactory.getDAOFactory(DAOFactory.MYSQL);		
		DocenteDao pdao=dao.getDocenteDao();
		
		HttpSession sesion = request.getSession();		
		
		Docente doc;
		if(sesion.getAttribute("doc")==null){
			doc = new Docente();System.out.println("nombreBean: "+doc.getNombre());
		} else {
			doc = (Docente) sesion.getAttribute("doc");
		}
		
		String id=""+doc.getId();System.out.println("id en Servlet:"+id);	
		
		try {
			pdao.deleteDocente(Integer.parseInt(id));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		sesion.invalidate();
		/*
		RequestDispatcher rd;
	    rd = request.getRequestDispatcher("/Persona/RegistrarPersona.jsp");
	    rd.forward(request, response);	 
	    */

		response.sendRedirect("Docente/Editar_Docente.jsp");
	}
	
	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");System.out.println("id: "+id);
		String nombre=request.getParameter("nombre");System.out.println("nombre: "+nombre);
		String apepat=request.getParameter("apepat");System.out.println("nombre: "+apepat);
		String apemat=request.getParameter("apemat");System.out.println("nombre: "+apemat);
		String nac=request.getParameter("nac");
		long   numdoc=Long.parseLong(request.getParameter("numdoc"));
		String fecini=request.getParameter("fecini");
		String ley=request.getParameter("ley");System.out.println("ley: "+ley);
		String maygra=request.getParameter("maygra");
		String menmaygra=request.getParameter("menmay");
		String uni=request.getParameter("uni");
		String paiuni=request.getParameter("paiuni");
		String pregrado=request.getParameter("preg");
		String maestria=request.getParameter("maes");
		String doctor=request.getParameter("doct");
		String cat=request.getParameter("cat");
		String regded=request.getParameter("regded");
		int horcla=Integer.parseInt(request.getParameter("horcla"));
		int horact=Integer.parseInt(request.getParameter("horact"));
		int tothor=Integer.parseInt(request.getParameter("tothor"));
		String docinv=request.getParameter("docinv");System.out.println("investigador: "+docinv);
		String dina=request.getParameter("dina");
		String peraca=request.getParameter("peraca");
		String obs=request.getParameter("obs");
		
		
		Docente bean = new Docente(Integer.parseInt(id), nombre.toUpperCase(),apepat.toUpperCase(),apemat.toUpperCase(),
				nac.toUpperCase(),numdoc,fecini,ley,maygra.toUpperCase(),menmaygra.toUpperCase(),
				uni.toUpperCase(),paiuni.toUpperCase(),
				pregrado,maestria,doctor,cat,regded,
				horcla,horact,tothor,docinv,dina,peraca,obs);
		
		int valor=0;		
		DAOFactory dao=DAOFactory.getDAOFactory(DAOFactory.MYSQL);		
		DocenteDao pdao=dao.getDocenteDao();	
		try {
			pdao.updateDocente(bean);
			boolean flag=false;
			if(flag == false) {valor = 0; }
			else if(flag==true){				
				valor = 1;
			}					
		} catch (Exception e) {
			System.out.println(""+e.getMessage());
		}
		response.setContentType("text/plain");
		response.getWriter().write(valor);
	}

}

package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import bean.CursoBean;
import sun.invoke.empty.Empty;
import util.ResponseObject;
import dao.interfaces.I_Curso;
import dao.mysql.MySql_Curso;
import daofactory.DAOFactory;
import daofactory.MySQLDaoFactory;
@WebServlet("/mantenerCurso")
public class ServletMantenerCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletMantenerCurso() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String accion=request.getParameter("accion");
		System.out.println(accion);
		if(accion!=null){
		if(accion.equals("actualizarEstado")){
				
				int estado=Integer.parseInt(request.getParameter("estado"));
				String idcurso=request.getParameter("idcurso");
				System.out.println("get "+ accion+" "+estado+" "+idcurso);
				
				try {
					DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
					I_Curso curso = dao.getCurso();
					
				    boolean flag=curso.estadocurso(idcurso, estado);
				    	if(flag!=false){
				    		request.setAttribute("mensaje", "El estado ha sido actualizado.");	
				    	}else{
				    		request.setAttribute("mensaje", "Ocurrio un error al actualizar el estado.");	
				    	}
				    	Vector<CursoBean> lista = curso.listarCursos();
						request.setAttribute("lista", lista);
						request.getRequestDispatcher("/Administrador/mantenerCurso.jsp").forward(request, response);
				} catch (Exception e) {
						System.out.println("ERROR actualizarEstado Servlet "+ e.getMessage());
				}
	
			}else if(accion.equalsIgnoreCase("listar")){
				try {
					DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
					I_Curso curso = dao.getCurso();
					Vector<CursoBean> lista = curso.listarCursos();
					request.setAttribute("lista", lista);
					request.getRequestDispatcher("/Administrador/mantenerCurso.jsp").forward(request, response);
				} catch (Exception e) {
					System.out.println("ERROR al listar "+e.getMessage());
				}
				
			}else if(accion.equalsIgnoreCase("preactualizar")){
				try {
					DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
					I_Curso curso = dao.getCurso();
					Vector<CursoBean> lista = curso.listarCursos();
					
					String idcurso=request.getParameter("idcurso");
					CursoBean detalleCurso=curso.buscarcurso(idcurso);
					   request.setAttribute("lista", lista);
					   request.setAttribute("detalleCurso",detalleCurso);
					   request.getRequestDispatcher("/Administrador/modificarCurso.jsp").forward(request, response);
					   
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
				
				
			}else if(accion.equalsIgnoreCase("agregarcurso")){
				try {
					DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
					I_Curso curso = dao.getCurso();
					Vector<CursoBean> lista = curso.listarCursos();
					
					String idcurso=request.getParameter("idcurso");
					CursoBean detalleCurso=curso.buscarcurso(idcurso);
					   request.setAttribute("lista", lista);
					   request.setAttribute("detalleCurso",detalleCurso);
					   request.getRequestDispatcher("/Administrador/crearCurso.jsp").forward(request, response);
					   
				} catch (Exception e) {
				System.out.println("erro vista agregar");
				}
				
				
			}
	}
	
	
		
		
		
			
		
	
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String accion=request.getParameter("accion");
		System.out.println("accion es "+accion );
		if(accion.equalsIgnoreCase("agregarCurso")){
			try {
				DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
				I_Curso curso = dao.getCurso();
				String  idcurso=request.getParameter("idcurso");
				String nombreCurso= request.getParameter("nombrecurso").toUpperCase();
				String nombrePropietaio=request.getParameter("nomProp").toUpperCase();
				int  horasTeoria=Integer.parseInt(request.getParameter("horasteoria"));
				int  horasLaboratorio=0;
				int  horasPractica=Integer.parseInt(request.getParameter("horaspractica"));
				
				int  estado=1;
				String idLab="";
				String codigoLab="";
				String  req1="";
				String  req2="";
				String  req3="";
				String  req4="";
				String correquisito=request.getParameter("correquisito");
				
				System.out.println(nombreCurso);
				
				if(request.getParameter("horaslaboratorio")!=null){
					horasLaboratorio=Integer.parseInt(request.getParameter("horaslaboratorio"));
				}
				if(request.getParameter("req1")!=null){
					req1=request.getParameter("req1");
				}
				if(request.getParameter("req2")!=null){
					req2=request.getParameter("req2");
				}
					
				if(request.getParameter("req3")!=null){
					req3=request.getParameter("req3");
				}
				
				if(request.getParameter("req4")!=null){
					req4=request.getParameter("req4");
				}
					
				if(request.getParameter("correquisito")!=null){
					correquisito=request.getParameter("correquisito");
				}
				
				int  creditos=horasTeoria+(horasLaboratorio/2)+(horasPractica/2);
				
				if(horasLaboratorio>0){
					codigoLab=idcurso.substring(0, 7);
					idLab=idcurso.substring(8, 11);
					
					System.out.println("id lab con substring "+idLab);
					int aumento=Integer.parseInt(idLab);
					aumento=aumento+1;
					System.out.println("id aummentado "+ aumento);
					idLab=Integer.toString(aumento);
					codigoLab=codigoLab.concat(idLab);
					
					System.out.println("nuevo codigo es "+codigoLab);
							
					CursoBean obj2= new CursoBean();
					obj2.setIdcurso(codigoLab);
					obj2.setNombre("Laboratorio de ".concat(nombreCurso));
					obj2.setHorasLaboratorio(horasLaboratorio);
					obj2.setEstado(estado);
					obj2.setNombrePropietario(nombrePropietaio);
					
					curso.agregarCurso(obj2);
					
				}
				
				CursoBean obj= new CursoBean();
				obj.setIdcurso(idcurso);
				obj.setNombre(nombreCurso);
				obj.setHorasTeoria(horasTeoria);
				obj.setHorasLaboratorio(horasLaboratorio);
				obj.setHorasPracticas(horasPractica);
				obj.setNumeroCreditos(creditos);
				obj.setEstado(estado);
				obj.setRequisito1(req1);
				obj.setRequisito2(req2);
				obj.setRequisito3(req3);
				obj.setCreditosRequisito(req4);
				obj.setCorequisito(correquisito);
				obj.setNombrePropietario(nombrePropietaio);
				if(codigoLab!=null){
					System.out.println("el nuevo codigo de laboratrio es "+codigoLab);
					obj.setCodLaboratorio(codigoLab);
			
				}else{
					obj.setCodLaboratorio("");
				}
				boolean flag= curso.agregarCurso(obj);
				if(flag!=false){
					Vector<CursoBean> lista = curso.listarCursos();
					request.setAttribute("mensaje","Se agrego con éxito");
					request.setAttribute("lista", lista);	
					
				}else{
					Vector<CursoBean> lista = curso.listarCursos();
					request.setAttribute("mensaje","Error al agregar, verifique campos.");
					request.setAttribute("lista", lista);	
				}
				
				
				request.getRequestDispatcher("/Administrador/mantenerCurso.jsp").forward(request, response);
			} catch (Exception e) {
					System.out.println("ERROR servlet:"+e.getMessage());
					e.printStackTrace();
			}
			
		}else if(accion.equalsIgnoreCase("buscarcurso")){
			try {
				DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
				I_Curso curso = dao.getCurso();
				String idecurso= request.getParameter("idecurso");
				System.out.println(idecurso);
				CursoBean datosCurso = curso.buscarcurso(idecurso);
				ResponseObject responseobj=null;
				if(datosCurso!=null){
					responseobj=new ResponseObject();
					response.setContentType("application/json");
					response.setCharacterEncoding("UTF-8");
					responseobj.setSuccess(true);
					responseobj.setObject(datosCurso);
					
				}
				response.getWriter().write(new Gson().toJson(responseobj));
				System.out.println("json BUSCAR CURSO " + new Gson().toJson(responseobj));
				
				
				System.out.println("CURSO !!");
			} catch (Exception e) {
				System.out.println("ERROR.."+e.getMessage());
			}
			
			
			
		}else if(accion.equalsIgnoreCase("modificarCurso")){
			

			try {
				DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
				I_Curso curso = dao.getCurso();
				String  idcurso=request.getParameter("idcurso");
				String nombreCurso= request.getParameter("nombrecurso").toUpperCase();
				String nombrePropietaio=request.getParameter("nomProp").toUpperCase();
				int  horasTeoria=Integer.parseInt(request.getParameter("horasteoria"));
				int  horasLaboratorio=0;
				int  horasPractica=Integer.parseInt(request.getParameter("horaspractica"));
				
				int  estado=1;
				String idLab="";
				String codigoLab="";
				String  req1="";
				String  req2="";
				String  req3="";
				String  req4="";
				String correquisito=request.getParameter("correquisito");
				
				System.out.println(nombreCurso);
				
				if(request.getParameter("horaslaboratorio")!=null){
					horasLaboratorio=Integer.parseInt(request.getParameter("horaslaboratorio"));
				}
				if(request.getParameter("req1")!=null){
					req1=request.getParameter("req1");
				}
				if(request.getParameter("req2")!=null){
					req2=request.getParameter("req2");
				}
					
				if(request.getParameter("req3")!=null){
					req3=request.getParameter("req3");
				}
				
				if(request.getParameter("req4")!=null){
					req4=request.getParameter("req4");
				}
					
				if(request.getParameter("correquisito")!=null){
					correquisito=request.getParameter("correquisito");
				}
				
				int  creditos=horasTeoria+(horasLaboratorio/2)+(horasPractica/2);
				
				if(horasLaboratorio>0){
					codigoLab=idcurso.substring(0, 7);
					idLab=idcurso.substring(8, 11);
					
					int aumento=Integer.parseInt(idLab);
					aumento=aumento+1;
					idLab=Integer.toString(aumento); 
					codigoLab=codigoLab.concat(idLab);
					
							
					CursoBean obj2= new CursoBean();
					obj2.setIdcurso(codigoLab);
					obj2.setHorasLaboratorio(horasLaboratorio);
					
					curso.modificarCurso(obj2);
					
				}
				
				CursoBean obj= new CursoBean();
				obj.setIdcurso(idcurso);
				obj.setNombre(nombreCurso);
				obj.setHorasTeoria(horasTeoria);
				obj.setHorasLaboratorio(horasLaboratorio);
				obj.setHorasPracticas(horasPractica);
				obj.setNumeroCreditos(creditos);
				obj.setEstado(estado);
				obj.setRequisito1(req1);
				obj.setRequisito2(req2);
				obj.setRequisito3(req3);
				obj.setCreditosRequisito(req4);
				obj.setCorequisito(correquisito);
				obj.setNombrePropietario(nombrePropietaio);
				if(codigoLab!=null){
					obj.setCodLaboratorio(codigoLab);
				}/*else{
					obj.setCodLaboratorio("");
				}*/
				boolean flag= curso.modificarCurso(obj);
				if(flag!=false){
					Vector<CursoBean> lista = curso.listarCursos();
					request.setAttribute("mensaje","Se modifico con éxito");
					request.setAttribute("lista", lista);	
					
				}else{
					Vector<CursoBean> lista = curso.listarCursos();
					request.setAttribute("mensaje","Error al modificar, verifique campos.");
					request.setAttribute("lista", lista);	
				}
				
				
				request.getRequestDispatcher("/Administrador/mantenerCurso.jsp").forward(request, response);
			} catch (Exception e) {
					System.out.println("ERROR servlet modificar:"+e.getMessage());
					e.printStackTrace();
			}
			
			
		}
	
	}

}

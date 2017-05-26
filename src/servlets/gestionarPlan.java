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

import util.ResponseObject;
import bean.CursoBean;
import bean.DetallecursoplanBean;
import bean.DetusuescBean;
import bean.EscuelaBean;
import bean.ParametroBean;
import bean.PlancurricularBean;
import bean.SemenstreBean;

import com.google.gson.Gson;
import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import dao.interfaces.I_Curso;
import dao.interfaces.I_Plancurricular;
import dao.interfaces.I_Semestre;
import dao.interfaces.I_Usuario;
import daofactory.DAOFactory;

/**
 * Servlet implementation class gestionarPlan
 */
@WebServlet("/gestionarPlan")
public class gestionarPlan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public gestionarPlan() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		Vector<DetusuescBean> listaSesion= new  Vector<DetusuescBean>();
		listaSesion=(Vector<DetusuescBean>) session.getAttribute("usuario");
		
		
		
		String accion=request.getParameter("accion");
		System.out.println(accion);
		if(accion!=null){
		if(accion.equals("ultimosemestre")){
			
			try {
				DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
				I_Semestre curso = dao.getSemestre();
				SemenstreBean bean= curso.cargarultimosemestre();
				ResponseObject responseobj=null;
				if(bean!=null){
					responseobj=new ResponseObject();
					response.setContentType("application/json");
					response.setCharacterEncoding("UTF-8");
					responseobj.setSuccess(true);
					responseobj.setObject(bean);
					
				}
				response.getWriter().write(new Gson().toJson(responseobj));
				System.out.println("json cargar ultimo Semestre : " + new Gson().toJson(responseobj));
				
				
				System.out.println("Semestre !!");
			} catch (Exception e) {
				System.out.println("ERROR.."+e.getMessage());
			}
			
			
			}else if(accion.equals("listarEscuelas")){
				
				try {
					DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
					I_Semestre semesre = dao.getSemestre();
					Vector<EscuelaBean> lista= new Vector<EscuelaBean>();
					lista=semesre.listarEscuelas();
					ResponseObject responseobj=null;
					if(lista!=null){
						responseobj=new ResponseObject();
						response.setContentType("application/json");
						response.setCharacterEncoding("UTF-8");
						responseobj.setSuccess(true);
						responseobj.setObject(lista);
						
					}
					response.getWriter().write(new Gson().toJson(responseobj));
					System.out.println("json cargar escuealas : " + new Gson().toJson(responseobj));
					
					
					System.out.println("Escuelas !!");
				} catch (Exception e) {
					System.out.println("ERROR.."+e.getMessage());
				}
				
				
				
				}else if(accion.equals("crearplan")){
					request.getRequestDispatcher("/Director/crearPlanCurricular.jsp").forward(request, response);
					
				}else if(accion.equals("listarPlan")){
					try {
						DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
						I_Plancurricular plan= dao.getPlancurricular();
						Vector<PlancurricularBean> lista = plan.listarPlanCurricular(listaSesion.get(0).getUsubean().getIdusuario());
						request.setAttribute("lista", lista);
						request.getRequestDispatcher("/Director/mantenerPlan.jsp").forward(request, response);
					} catch (Exception e) {
						System.out.println("ERROR al listar "+e.getMessage());
					}
					
				}else if(accion.equals("asignarcreditaje")){
					
					try {
						DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
						I_Semestre semestre= dao.getSemestre();
						SemenstreBean beanSemestre= semestre.cargarultimosemestre();
						I_Usuario usuario=dao.getUsuario();
						Vector<EscuelaBean> escuelasSinplan=new Vector<EscuelaBean>();
						String idusuario =listaSesion.get(0).getUsubean().getIdusuario();
						String idsemenstre=beanSemestre.getIdSemestre();
						
						escuelasSinplan=usuario.listarEscuelasSinPlan(idusuario, idsemenstre);
		
						request.setAttribute("escuela",escuelasSinplan);
						request.getRequestDispatcher("/Director/AsignarCreditaje.jsp").forward(request, response);
								
					} catch (Exception e) {
						System.out.println("ERROR al listar "+e.getMessage());
					}
					
								
					
				}
				
		
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		Vector<DetusuescBean> listaSesion= new  Vector<DetusuescBean>();
		listaSesion=(Vector<DetusuescBean>) session.getAttribute("usuario");
		
		String accion=request.getParameter("accion");
		System.out.println(accion);
		if(accion!=null){
		if(accion.equals("crearsemestre")){
			
			try {
				DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
				I_Semestre curso = dao.getSemestre();
				
				String idsemestre =request.getParameter("codigosemestre");
				int ano=Integer.parseInt(request.getParameter("ano"));
				int semestre=Integer.parseInt(request.getParameter("periodo"));
				int qsemana=Integer.parseInt(request.getParameter("cantidadsemanas"));
			
				SemenstreBean bean= new SemenstreBean();
					
				bean.setIdSemestre(idsemestre);
				bean.setAno(ano);
				bean.setSemestre(semestre);
				bean.setCantidadSemanas(qsemana);
				
				boolean flag=curso.crearSemestre(bean);
				
				if(flag==true){
					request.setAttribute("mensaje", "El estado ha sido actualizado.");	
				}else{
					request.setAttribute("mensaje", "El estado ha sido actualizado.");	
				}
				request.getRequestDispatcher("/Administrador/administrarSemestre.jsp").forward(request, response);
				
			} catch (Exception e) {
				System.out.println("ERROR.."+e.getMessage());
			}
			
		}else if(accion.equals("cargarplanescuela")){
				try {
					String codigoEscula=request.getParameter("idEscuelaPlanDet");
					
					DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
					I_Semestre semestre = dao.getSemestre();
					I_Plancurricular plan= dao.getPlancurricular();
					
					Vector<PlancurricularBean> ultimoPlan=new Vector<PlancurricularBean>();
					ultimoPlan=plan.cargarUltimoPlan(codigoEscula);
					
					ResponseObject responseobj=null;
					if(ultimoPlan!=null){
						responseobj=new ResponseObject();
						response.setContentType("application/json");
						response.setCharacterEncoding("UTF-8");
						responseobj.setSuccess(true);
						responseobj.setObject(ultimoPlan);
						
					}
					response.getWriter().write(new Gson().toJson(responseobj));
					System.out.println("json cargar planes escuela : " + new Gson().toJson(responseobj));
					
				} catch (Exception e) {
					// TODO: handle exception
				}
			
			
			
		}else if(accion.equals("creditaje")){
				
				try {
					DAOFactory dao = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
					I_Semestre semestre = dao.getSemestre();
					I_Plancurricular plan= dao.getPlancurricular();
					
					String codigoEscuela=request.getParameter("escuelas");
					String c1=request.getParameter("c1");
					String c2=request.getParameter("c2");
					String c3=request.getParameter("c3");
					String c4=request.getParameter("c4");
					String c5=request.getParameter("c5");
					String c6=request.getParameter("c6");
					String c7=request.getParameter("c7");
					String c8=request.getParameter("c8");
					String c9=request.getParameter("c9");
					String c10=request.getParameter("c10");
					String[] array= new String[10]; 
					array[0]=c1;
					array[1]=c2;
					array[2]=c3;
					array[3]=c4;
					array[4]=c5;
					array[5]=c6;
					array[6]=c7;
					array[7]=c8;
					array[8]=c9;
					array[9]=c10;
					
					SemenstreBean beanSemestre= semestre.cargarultimosemestre();
					
				
					int fila=plan.buscarultimoplan();
					if(fila!=0){
						String nombreEscuela=null;
						if(codigoEscuela.equals("101")){
							nombreEscuela="Ingenieria de Computacion y Sistemas";
						}else if(codigoEscuela.equals("202")){
							nombreEscuela="Ingenieria Industrial";
						}else if(codigoEscuela.equals("303")){
							nombreEscuela="Arquitectura";
						}else if(codigoEscuela.equals("404")){
							nombreEscuela="Ingeniería Civil";	
						}else if(codigoEscuela.equals("505")){
							nombreEscuela="Ingeniería Electrónica";
						}else if(codigoEscuela.equals("606")){
							nombreEscuela="Ingeniería en Industrias Alimentarias";
						}else if(codigoEscuela.equals("707")){
							nombreEscuela="Ciencias Aeronáuticas";
						}
						
						PlancurricularBean bean2= new PlancurricularBean();
						bean2.setIdPlan(Integer.toString(fila+1));
						bean2.setIdEscuela(codigoEscuela);
						bean2.setCodSemes(beanSemestre.getIdSemestre());
						bean2.setDescripcion(nombreEscuela);
						bean2.setFacultad("FIA");
						bean2.setEstado(1);
						
						boolean flag=plan.crearPlan(bean2,listaSesion.get(0).getUsubean().getIdusuario());
						
						if(flag==true){
							
							
							for (int i = 0; i < array.length; i++) {
								ParametroBean bean= new ParametroBean();
								bean.setCodigoEscuela(codigoEscuela);
								bean.setCodigoSemestre(beanSemestre.getIdSemestre());
								bean.setCiclo(i+1);
								bean.setCreditos(Integer.parseInt(array[i]));
								plan.agregarCreditaje(bean);
							}
							
							Vector<PlancurricularBean> ultimoPlan=new Vector<PlancurricularBean>();
							
							ultimoPlan=plan.cargarUltimoPlan(codigoEscuela);
							if(ultimoPlan.size()>0){
								DetallecursoplanBean beanDetalle=null;
								
								for(int i=0;i<ultimoPlan.size();i++){
									beanDetalle= new DetallecursoplanBean();
									beanDetalle.setCodIdcurso(ultimoPlan.get(i).getAccesoCurso().getIdcurso());
									beanDetalle.setIdEscuela(ultimoPlan.get(i).getIdEscuela());
									beanDetalle.setIdPlan(bean2.getIdPlan());
									beanDetalle.setCiclo(Integer.parseInt(ultimoPlan.get(i).getCiclo()));
									
									System.out.println((i+1)+") "+beanDetalle.getCodIdcurso()+"  "+beanDetalle.getIdEscuela()+"  "+beanDetalle.getIdPlan()+"  "+beanDetalle.getCiclo()+"  "+beanSemestre.getIdSemestre()+" \n");
									
									try {
										
										plan.asignarcursoplan(beanDetalle, beanSemestre.getIdSemestre());
										
									} catch (Exception e) {
										System.out.println("ERROR al asignar detalle para el plan");
									}
									
									
									
								}
							request.setAttribute("idescuela", ultimoPlan.get(1).getIdEscuela());
							
							}else{
								
								
							}
								
							request.getRequestDispatcher("/Director/crearPlanCurricular.jsp").forward(request, response);
						
						}
						
					}else{
						
						
					}
					
				} catch (Exception e) {
					System.out.println("ERROR.. creditaje Serlvet"+e.getMessage());
					e.printStackTrace();
				}
			}
		
		}

		
	}

}

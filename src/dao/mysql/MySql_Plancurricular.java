package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import bean.CursoBean;
import bean.DetallecursoplanBean;
import bean.ParametroBean;
import bean.PlancurricularBean;
import bean.SemenstreBean; 
import dao.interfaces.I_Plancurricular;
import daofactory.MySQLDaoFactory;

public class MySql_Plancurricular implements I_Plancurricular {

	@Override
	public Vector<PlancurricularBean> listarPlanCurricular(String idusuario) throws Exception {
		Vector<PlancurricularBean> lista=new Vector<PlancurricularBean>();
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="SELECT * FROM plan_curricular a"
					+ " INNER JOIN semestre b ON a.codpc_sem=b.idSemestre where a.usu_crea_reg='"+idusuario+"'";
			System.out.println(query);
			ResultSet rs=stm.executeQuery(query);
			PlancurricularBean bean=null;
			SemenstreBean bean2=null;
			
			while(rs.next()){
				bean= new PlancurricularBean();
				bean.setIdPlan(rs.getString("a.idPlan"));
				bean.setDescripcion(rs.getString("a.descripcion"));
				bean.setEstado(rs.getInt("a.estado"));
				
				bean2=new SemenstreBean();	
				bean2.setAno(rs.getInt("b.año"));
				bean2.setSemestre(rs.getInt("b.semestre"));
				
				bean.setAccesoSemestre(bean2);
				lista.add(bean);
				
			}
		}catch (Exception e) {
				System.out.println("ERROR : Listar Plan curricular " +e.getMessage());
				e.printStackTrace();
		}
		
		return lista;
	}

	@Override
	public boolean asignarcursoplan(DetallecursoplanBean bean,String idsemestre) throws Exception {
		boolean flag=false;
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="insert into det_curso_esc(codDce_curso,codDce_escuela,idPLan,codDce_sem,ciclo) "
					+ "values('"+bean.getCodIdcurso()+"','"+bean.getIdEscuela()+"','"+bean.getIdPlan()+"','"+idsemestre+"','"+bean.getCiclo()+"')";
			System.out.println("consulta :"+query);
			int filaAgregada=stm.executeUpdate(query);
			if(filaAgregada==1){
				
				flag=true;
			}
			
		} catch (Exception e) {
			System.out.println("error a agregar detalle cursos  "+e.getMessage());
			e.printStackTrace();
		}
	
	return flag;
	}

	@Override
	public Vector<PlancurricularBean> cargarUltimoPlan(String idescuela) throws Exception {
		Vector<PlancurricularBean> lista=new Vector<PlancurricularBean>();
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="select  * from det_curso_esc a inner join curso b ON a.codDce_curso=b.idcurso where a.idPlan=(select idPlan from taller_proyectos.det_curso_esc b  where b.codDce_escuela='"+idescuela+"' order by b.idPlan  desc limit 1)  order by a.ciclo asc ";
			System.out.println(query);
			ResultSet rs=stm.executeQuery(query);
			PlancurricularBean bean=null;
			CursoBean bean2=null;
			
			while(rs.next()){
				bean= new PlancurricularBean();
				bean.setIdPlan(rs.getString("a.idPlan"));
			
				
				bean.setCiclo(rs.getString("a.ciclo"));
				bean.setIdEscuela(rs.getString("a.codDce_escuela"));
				bean2= new CursoBean();
				bean2.setIdcurso(rs.getString("b.idcurso"));
				bean2.setNombre(rs.getString("b.nombre"));
				
				bean.setAccesoCurso(bean2);
				
				lista.add(bean);
				
			}
		}catch (Exception e) {
				System.out.println("ERROR : Listar Plan ultimo plan por escuela " +e.getMessage());
				e.printStackTrace();
		}
		
		return lista;
	}

	@Override
	public boolean agregarCreditaje(ParametroBean bean) throws Exception {
		boolean flag=false;
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="insert into parametros(codP_esc,codP_sem,ciclo,creditos) values('"+bean.getCodigoEscuela()+"','"+bean.getCodigoSemestre()+"','"+bean.getCiclo()+"','"+bean.getCreditos()+"') ";
			System.out.println("consulta :"+query);
			int filaAgregada=stm.executeUpdate(query);
			if(filaAgregada==1){
				
				flag=true;
			}
			
		} catch (Exception e) {
			System.out.println("error a agregar detalle cursos  "+e.getMessage());
			e.printStackTrace();
		}
	
	return flag;
	}

	@Override
	public Vector<ParametroBean> buscarParametros(String codEscuela, String codSemestre)
			throws Exception {

		Vector<ParametroBean> parametro= new Vector<ParametroBean>();
		
		
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			String query="select * from parametros where codP_esc='"+codEscuela+"' and codP_sem='"+codSemestre+"' ";
			System.out.println("consulta :"+query);
			Statement stmt = con.createStatement();
			ResultSet rs =stmt.executeQuery(query);
			ParametroBean bean=null;
			while( rs.next() ){
				
				bean=new ParametroBean();
				bean.setCodigoEscuela(rs.getString("codP_esc"));
				bean.setCodigoSemestre(rs.getString("codP_sem"));
				bean.setCiclo(rs.getInt("ciclo"));
				bean.setCreditos(rs.getInt("creditos"));
				
				parametro.add(bean);
				
			}
			con.close();
		} catch (Exception e) {
			System.out.println("ERROR buscarParametros Mysql "+ e.getMessage());
		}
		return parametro;
	}

	@Override
	public boolean crearPlan(PlancurricularBean bean,String idusuario) throws Exception {
		boolean flag=false;
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="insert into plan_curricular(idPlan,idEscuela,descripcion,codPc_sem,estado,usu_crea_reg) values('"+bean.getIdPlan()+"','"+bean.getIdEscuela()+"','"+bean.getDescripcion()+"','"+bean.getCodSemes()+"','"+bean.getEstado()+"','"+idusuario+"')";
			System.out.println("consulta :"+query);
			int filaAgregada=stm.executeUpdate(query);
			if(filaAgregada==1){
				
				flag=true;
			}
			
		} catch (Exception e) {
			System.out.println("error al crear plan"+e.getMessage());
			e.printStackTrace();
		}
	
	return flag;
	}

	@Override
	public int buscarultimoplan() throws Exception {
		int ultimoplan=0;
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stmt=con.createStatement();
			String query="SELECT (idPlan * 1) as idPlan  FROM plan_curricular order by idPlan desc limit 1";
		
			ResultSet rs =stmt.executeQuery(query);
			
			while( rs.next() ){
				
				
				ultimoplan=rs.getInt("idPlan");
				
			}
			con.close();
		} catch (Exception e) {
			System.out.println("error  "+e.getMessage());
			e.printStackTrace();
		}
		
		return ultimoplan;
	}
	
	

}

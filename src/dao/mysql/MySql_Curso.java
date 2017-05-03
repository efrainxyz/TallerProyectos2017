package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;

import bean.CursoBean;
import dao.interfaces.I_Curso;
import daofactory.MySQLDaoFactory;


public class MySql_Curso  implements I_Curso {

	@Override
	public boolean agregarCurso(CursoBean bean) throws Exception {
		boolean flag=false;
			try {
				Connection con=MySQLDaoFactory.obtenerConexion();
				Statement stm=con.createStatement();
				String query="insert into  curso(idcurso,nombre,h_teo,h_lab,h_pract,creditos,"
						+ "estado_hab_inhab,req01,req02,req03,cooreq,cred_req,nombreProp,codLab,"
						+ "fec_crea_reg) values('"+bean.getIdcurso()+"','"+bean.getNombre()+"'"
						+ ",'"+bean.getHorasTeoria()+"','"+bean.getHorasLaboratorio()+"'"
						+ ",'"+bean.getHorasPracticas()+"','"+bean.getNumeroCreditos()+"',"
						+ "'"+bean.getEstado()+"','"+bean.getRequisito1()+"','"+bean.getRequisito2()+"'"
					    + ",'"+bean.getRequisito3()+"','"+bean.getCorequisito()+"','"+bean.getCreditosRequisito()+"',"
					    		+ "'"+bean.getNombrePropietario()+"','"+bean.getCodLaboratorio()+"',now())";
				System.out.println("consulta :"+query);
				int filaAgregada=stm.executeUpdate(query);
				if(filaAgregada==1){
					
					flag=true;
				}
				
			} catch (Exception e) {
				System.out.println("error  "+e.getMessage());
				e.printStackTrace();
			}
		
		return flag;
	}

	@Override
	public Vector<CursoBean> listarCursos() throws Exception {
		Vector<CursoBean> lista= new Vector<CursoBean>();
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stmt=con.createStatement();
			String query="select *  from curso";
			System.out.println("consulta :"+query);
			ResultSet rs=stmt.executeQuery(query);
			CursoBean  curso=null;
			
			while(rs.next()){
				curso=new CursoBean();
				curso.setIdcurso(rs.getString("idcurso"));
				curso.setNombre(rs.getString("nombre"));
				curso.setHorasTeoria(rs.getInt("h_teo"));
				curso.setHorasLaboratorio(rs.getInt("h_lab"));
				curso.setHorasPracticas(rs.getInt("h_pract"));
				curso.setNumeroCreditos(rs.getInt("creditos"));
				curso.setEstado(rs.getInt("estado_hab_inhab"));
				curso.setRequisito1(rs.getString("req01"));
				curso.setRequisito2(rs.getString("req02"));
				curso.setRequisito3(rs.getString("req03"));
				curso.setCorequisito(rs.getString("req01"));
				curso.setCreditosRequisito(rs.getString("cred_req"));
				curso.setNombrePropietario(rs.getString("nombreProp"));
				
				lista.add(curso);
				
			}
			
		} catch (Exception e) {
			System.out.println("ERROR al listar "+e.getMessage());
			e.printStackTrace();
		}
		
		return lista;
	}

	@Override
	public CursoBean buscarcurso(String valorbusqueda) throws Exception {
		
		
		CursoBean curso=null;
		
		
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			String query="SELECT * FROM curso where nombre like '%"+valorbusqueda+"%' or idcurso like  '%"+valorbusqueda+"%' ";
			System.out.println("consulta :"+query);
			Statement stmt = con.createStatement();
			ResultSet rs =stmt.executeQuery(query);
			
			while( rs.next() ){
				
				curso=new CursoBean();
				curso.setIdcurso(rs.getString("idcurso"));
				curso.setNombre(rs.getString("nombre"));
				curso.setHorasTeoria(rs.getInt("h_teo"));
				curso.setHorasLaboratorio(rs.getInt("h_lab"));
				curso.setHorasPracticas(rs.getInt("h_pract"));
				curso.setNumeroCreditos(rs.getInt("creditos"));
				curso.setEstado(rs.getInt("estado_hab_inhab"));
				curso.setNombrePropietario(rs.getString("nombreProp"));
				
				
			}
			con.close();
		} catch (Exception e) {
			System.out.println("ERROR actualizarEstado Mysql "+ e.getMessage());
		}
		return curso;
	}
	
	@Override
	public boolean estadocurso(String id , int estado) throws Exception {
		boolean flag = false;
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			if(estado==1){
				String query = "update curso set estado_hab_inhab='0' where idcurso="+id;
				int fila =stmt.executeUpdate(query);
				if(fila==1){
					flag=true;
				}
			}else if(estado==0){
				String query = "update curso set estado_hab_inhab='1' where idcurso="+id;
				int fila =stmt.executeUpdate(query);
				if(fila==1){
					flag=true;
				}
				
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("ERRO estado curso  MYsql"+e.getMessage());
		}
		return flag;
	}
		
	public boolean modificarCurso(CursoBean bean) throws Exception {
		boolean flag = false;
		try {
			Connection con = MySQLDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String query="update curso set nombre='"+bean.getNombre()+"',creditos='"+bean.getNumeroCreditos()+"'"
						+ ",h_teo='"+bean.getHorasTeoria()+"',h_lab='"+bean.getHorasLaboratorio()+"',h_pract='"+bean.getHorasPracticas()+"' "
						+ ",req01='"+bean.getRequisito1()+"',req02='"+bean.getRequisito2()+"',req03='"+bean.getRequisito3()+"', "
						+ "cooreq='"+bean.getCorequisito()+"',cred_req='"+bean.getCreditosRequisito()+"' "
						+ ",nombreProp='"+bean.getNombrePropietario()+"'  where idcurso='"+bean.getIdcurso()+"'";
			System.out.println("consulta :"+query);
			int filaAgregada=stmt.executeUpdate(query);
			if(filaAgregada==1){
				
				flag=true;
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("ERROR modficar curso  MYsql"+e.getMessage());
			e.printStackTrace();
		}
		return flag;
	}
}

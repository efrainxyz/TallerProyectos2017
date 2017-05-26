package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import bean.CursoBean;
import bean.EscuelaBean;
import bean.SemenstreBean;
import dao.interfaces.I_Semestre;
import daofactory.MySQLDaoFactory;

public class MySql_Semestre implements I_Semestre {

	@Override
	public SemenstreBean cargarultimosemestre() throws Exception {
		SemenstreBean bean=null;
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stmt=con.createStatement();
			String query="SELECT * FROM semestre order by idSemestre desc limit 1";
		
			ResultSet rs =stmt.executeQuery(query);
			
			while( rs.next() ){
				
				bean=new SemenstreBean();
				bean.setIdSemestre(rs.getString("idSemestre"));
				bean.setAno(rs.getInt("año"));
				bean.setSemestre(rs.getInt("semestre"));
				bean.setCantidadSemanas(rs.getInt("cant_sema"));
				
				
			}
			con.close();
		} catch (Exception e) {
			System.out.println("error  "+e.getMessage());
			e.printStackTrace();
		}
	
	return bean;
	}

	@Override
	public boolean crearSemestre(SemenstreBean bean) throws Exception {
		boolean estado=false;
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="insert into semestre (idsemestre,año,semestre,cant_sema) values('"+bean.getIdSemestre()+"','"+bean.getAno()+"'"
					+ ",'"+bean.getSemestre()+"','"+bean.getCantidadSemanas()+"')";
			int filaAgregada=stm.executeUpdate(query);
			if(filaAgregada==1){
				estado=true;
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return estado;
	}

	@Override
	public Vector<EscuelaBean> listarEscuelas() throws Exception {
		Vector<EscuelaBean> lista=new Vector<EscuelaBean>();
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="Select * from escuela";
			ResultSet rs=stm.executeQuery(query);
			EscuelaBean bean=null;
			
			while(rs.next()){
				bean= new EscuelaBean();
				bean.setIdescuela(rs.getString("idescuela"));
				bean.setDescripcion(rs.getString("descripcion"));
				bean.setFacultad(rs.getString("facultad"));
				lista.add(bean);
				
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return lista;
	}

}

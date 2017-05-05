package daofactory;
import java.sql.Connection;
import java.sql.DriverManager;

import dao.interfaces.*;
import dao.mysql.*;

public class MySQLDaoFactory extends DAOFactory{
		
	public static Connection obtenerConexion(){
		
		Connection con=null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/tallerproyectos2";
			String user = "root";
			String password ="";
			con = DriverManager.getConnection(url,user,password);
		
		} catch (Exception e) {
		// TODO: handle exception
		
			System.out.print(e.getMessage());
			System.out.print("Connection Failed!");
			e.printStackTrace();		
		}
		return con;
	
	}
	
	@Override
	public I_Curso getCurso() {
		// TODO Auto-generated method stub
		return new MySql_Curso();
	}
	
	
	@Override
	public CursoDao getCursoDao() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Detalle_Curso_Escuela_Dao getDetalle_Curso_Escuela_Dao() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DocenteDao getDocenteDao() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	//agregar get de los mysql_nombredao
	/*
	public NombreDao getNombreDao(){
		return new MySql_NombreDao();
	}*/
	
}

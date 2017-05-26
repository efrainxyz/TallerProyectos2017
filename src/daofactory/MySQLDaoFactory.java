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
			String url = "jdbc:mysql://localhost:3306/taller_proyectos";
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
	public I_Semestre getSemestre() {
		// TODO Auto-generated method stub
		return new MySql_Semestre();
	}

	@Override
	public I_Plancurricular getPlancurricular() {
		// TODO Auto-generated method stub
		return new MySql_Plancurricular();
	}
	
	@Override
	public I_Usuario getUsuario() {
		// TODO Auto-generated method stub
		return new MySql_Usuario();
	}
	

	
	
}

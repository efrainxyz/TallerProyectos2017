package service;
import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLDaoFactory {
		
	public static Connection obtenerConexion(){
		
		Connection con=null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/alumno";
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
	

	 


}

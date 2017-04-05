package service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.jws.WebService;



@WebService
public class MySql_UsuarioDao extends MySQLDaoFactory implements I_Usuario {

	@Override
	public boolean insertarUsuario(Alumno bean) throws Exception {
		
		boolean flag = false;
		
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="insert into alumno(nombre,edad) values('"+bean.getNombre()+"',"+bean.getEdad()+")";
			int filas=stm.executeUpdate(query);
			if(filas==1){
				flag=true;
			}
			con.close();
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;
		
	}

	@Override
	public boolean eliminarUsuario(int id) throws Exception {
boolean flag = false;
		
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="delete from alumno where id= "+id;
			int filas=stm.executeUpdate(query);
			if(filas==1){
				flag=true;
			}
			con.close();
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;
	}

	/*@Override
	public ArrayList<Alumno> listarUusuario() throws Exception {
		ArrayList<Alumno> lista = new ArrayList<Alumno>();
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="select * from alumno";
			ResultSet rs=stm.executeQuery(query);
			Alumno bean=null;
			while(rs.next()){
				bean= new Alumno();
				bean.setId(rs.getInt("id"));
				bean.setNombre(rs.getString("nombre"));
				bean.setEdad(rs.getInt("edad"));
				
				lista.add(bean);
			}
			con.close();
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return lista;
		
	}
*/
	@Override
	public Alumno buscarUsuario(int id) throws Exception {
		
		Alumno bean= null;
		
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stm=con.createStatement();
			String query="select * from alumno where id="+id;
			ResultSet rs=stm.executeQuery(query);
			if(rs.next()){
				bean= new Alumno();
				bean.setId(rs.getInt("id"));
				bean.setNombre(rs.getString("nombre"));
				bean.setEdad(rs.getInt("edad"));
			}
			con.close();
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return bean;
	}

}

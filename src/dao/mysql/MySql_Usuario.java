package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import bean.CursoBean;
import bean.DetusuescBean;
import bean.EscuelaBean;
import bean.PerfilBean;
import bean.UsuarioBean;
import dao.interfaces.I_Usuario;
import daofactory.MySQLDaoFactory;

public class MySql_Usuario implements I_Usuario {

	@Override
	public Vector<DetusuescBean> validar(String usuario, String clave) throws Exception {
		Vector<DetusuescBean> listaUsuario = new Vector<DetusuescBean>();		
		
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stmt=con.createStatement();
			String query="SELECT * FROM usuario a  "
					+ "inner join det_usu_esc b ON a.idusuario=b.idUsuario "
					+ "inner join escuela c ON c.idescuela=b.idEscuela "
					+ "inner join perfil d ON d.idperfil=b.idPerfil "
					+ "where a.nombreUsu='"+usuario+"' and a.Contraseña='"+clave+"' ";
			System.out.println("consulta :"+query);
			ResultSet rs=stmt.executeQuery(query);
			UsuarioBean  usu=null;
			DetusuescBean usuesc=null;
			PerfilBean perfil=null;
			EscuelaBean escuela=null;
			while(rs.next()){
				
				usu= new UsuarioBean();
				usu.setNombreusu(rs.getString("a.nombreUsu"));
				usu.setIdusuario(rs.getString("a.idusuario"));
				usu.setNombre(rs.getString("a.nombre"));
				usu.setApePat(rs.getString("a.ape_Pat"));
				
				perfil= new PerfilBean();
				perfil.setIdperfil(rs.getString("d.idperfil"));
				perfil.setNombre(rs.getString("d.nombre"));
				
				escuela = new EscuelaBean();
				escuela.setIdescuela(rs.getString("c.idescuela"));
				escuela.setDescripcion(rs.getString("c.descripcion"));
				
				usuesc= new DetusuescBean();
				usuesc.setEscbean(escuela);
				usuesc.setPerfbean(perfil);
				usuesc.setUsubean(usu);
				
				listaUsuario.add(usuesc);
			}
			
		} catch (Exception e) {
			System.out.println("ERROR al listar datos del Usuario logeado "+e.getMessage());
			e.printStackTrace();
		}
		
		return listaUsuario;
	}

	@Override
	public Vector<EscuelaBean> listarEscuelasSinPlan(String idsuario,
			String idsemenstre) {
Vector<EscuelaBean> listarEscuelas = new Vector<EscuelaBean>();		
		
		try {
			Connection con=MySQLDaoFactory.obtenerConexion();
			Statement stmt=con.createStatement();
			String query="select * from det_usu_esc a  inner join escuela  b ON a.idEscuela=b.idescuela where not exists(select * from plan_curricular c  where  b.idescuela=c.idEscuela  and c.codPc_sem='"+idsemenstre+"') and a.idUsuario='"+idsuario+"'";
			System.out.println("consulta :"+query);
			ResultSet rs=stmt.executeQuery(query);
			
			EscuelaBean  escuelabean= null;
			while(rs.next()){
				escuelabean= new EscuelaBean();
				escuelabean.setIdescuela(rs.getString("b.idEscuela"));
				escuelabean.setDescripcion(rs.getString("b.descripcion"));
				
			listarEscuelas.add(escuelabean);
			}
			
		} catch (Exception e) {
			System.out.println("ERROR al listar datos del Usuario logeado "+e.getMessage());
			e.printStackTrace();
		}
		
		return listarEscuelas;
	}

}

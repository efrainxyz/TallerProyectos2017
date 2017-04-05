package service;

import java.util.ArrayList;



public interface I_Usuario {
	
	public boolean insertarUsuario(Alumno  bean) throws Exception;
	public boolean eliminarUsuario(int id) throws Exception;
	//public ArrayList<Alumno> listarUusuario() throws Exception;
	public Alumno buscarUsuario(int id) throws Exception;
	

}

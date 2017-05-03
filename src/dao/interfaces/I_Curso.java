package dao.interfaces;

import java.util.ArrayList;
import java.util.Vector;

import bean.CursoBean;

public interface I_Curso {
	
	public boolean agregarCurso(CursoBean bean) throws Exception;
	public Vector<CursoBean> listarCursos() throws Exception;
	public CursoBean buscarcurso(String idcurso) throws Exception;
	public boolean estadocurso(String id, int estado) throws Exception;
	public boolean modificarCurso(CursoBean bean) throws Exception;

}

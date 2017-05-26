package dao.interfaces;

import java.util.Vector;

import bean.EscuelaBean;
import bean.SemenstreBean;

public interface I_Semestre {
	
	public SemenstreBean cargarultimosemestre() throws Exception;
	public boolean  crearSemestre(SemenstreBean bean) throws Exception;
	public Vector<EscuelaBean> listarEscuelas() throws Exception;

}

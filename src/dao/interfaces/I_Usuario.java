package dao.interfaces;
import java.util.Vector;

import bean.DetusuescBean;
import bean.EscuelaBean;

public interface I_Usuario {
	public Vector<DetusuescBean> validar(String usuario, String clave) throws Exception;
	public Vector<EscuelaBean> listarEscuelasSinPlan(String idsuario,String idsemenstre);
	}

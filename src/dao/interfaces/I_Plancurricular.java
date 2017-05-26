package dao.interfaces;

import java.util.Vector;

import bean.DetallecursoplanBean;
import bean.ParametroBean;
import bean.PlancurricularBean;

public interface I_Plancurricular {
	public Vector<PlancurricularBean> listarPlanCurricular(String idusuario) throws Exception;
	public boolean asignarcursoplan(DetallecursoplanBean bean,String idsemestre) throws Exception;
	public Vector<PlancurricularBean> cargarUltimoPlan(String idescuela) throws Exception;
	public boolean agregarCreditaje(ParametroBean bean) throws Exception;
	public Vector<ParametroBean> buscarParametros(String codEscuela, String codSemestre)throws Exception;
	public boolean crearPlan(PlancurricularBean bean ,String idsuario ) throws Exception;
	public int buscarultimoplan() throws Exception;
}

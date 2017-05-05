package dao.interfaces;

import bean.Docente;

public interface DocenteDao {

	public boolean createDocente(Docente o) throws Exception;
	public Docente selectDocente(Docente o) throws Exception;
	public Docente deleteDocente(Object o) throws Exception;
	public boolean updateDocente(Docente o) throws Exception;
}

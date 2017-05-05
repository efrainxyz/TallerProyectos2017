package dao.interfaces;

import bean.Persona;

public interface PersonaDao {

	public int create(Persona o) throws Exception;
	public int createConLista(Object o) throws Exception;
	public Persona selectPersona(Object o) throws Exception;
	public Persona deletePersona(Object o) throws Exception;
	public boolean updatePersona(Persona o) throws Exception;
}

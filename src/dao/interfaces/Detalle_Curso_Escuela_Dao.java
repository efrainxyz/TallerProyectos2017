package dao.interfaces;

import java.util.List;

public interface Detalle_Curso_Escuela_Dao<T> {
    void create(T o) throws Exception;

    void update(T o) throws Exception;

    void delete(T o) throws Exception;

    List<T> readAll() throws Exception;

    T find(Object o) throws Exception;
    
    List<T> readAll_Ciclos() throws Exception;
	
}

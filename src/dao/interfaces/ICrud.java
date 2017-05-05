/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.interfaces;

import java.util.List;

/**
 *
 * @author Eduardo Castillo
 */
public interface ICrud <T>{
    
    int create(T o) throws Exception;

    boolean update(T o) throws Exception;

    void delete(T o) throws Exception;

    List<T> readAll() throws Exception;

    T find(Object o) throws Exception;
}

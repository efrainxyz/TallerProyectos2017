package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Detalle_Curso_Escuela;
import dao.interfaces.Detalle_Curso_Escuela_Dao;
import dao.interfaces.DocenteDao;
import daofactory.DAOFactory;

@WebServlet({ "/SDetalle_Curso_Escuela", "/abc","/listaCiclo" })
public class SDetalle_Curso_Escuela extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		switch (request.getServletPath()) {
		  case "/listaCiclo":
			  listaciclo();
		}	  
	}


	private void listaciclo() {

	}
	
	

}

<%-- 
    Document   : MaestroCursos
    Created on : 09-mar-2017, 23:30:24
    Author     : Eduardo Castillo
    Caso de uso 09: Maestro cursos
    --ha cambiado de nombre a Asignar cursos a docente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Maestro Cursos</title>

    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <h1><img src="../imagenes/bannerusmp.png" alt="USMP" /></h1>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    
    <div class="row col-lg-11 center-block">
        
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!--
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">USMP</a>
                </div>
                -->
                <ul class="nav navbar-nav">
                  <li class="active"><a href="#">Inicio</a></li>
                  <li><a href="#">Disponibilidad de Aulas</a></li>
                  <li><a href="http://localhost:8080/taller001/Docentes/Maestro_Docentes.jsp">Maestro Docentes</a></li>
                  <li><a href="#">Maestro Aulas</a></li>
                  <li><a href="#">Maestro Currícula</a></li>
                  <li><a href="#">Maestro Cursos</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span>Opciones</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Salir</a></li>
                 </ul>
            </div>
        </nav> 
        
    </div>
    
        <div class="row center-block">

    <div class="col-md-12">  
        <table class="table">
             <tr>
                <td><label for="nombreDocente">Nombre(s)</label></td>
                <td><input type="text" class="form-control" id="nombreDocente" placeholder="Nombre del docente"></td>
            </tr>
            
            <tr>
            	<td><label for="apepatDocente">Apellido Paterno</label></td>
            	<td><input type="text" class="form-control" id="apepatDocente" placeholder="Apellido Paterno"></td>
             </tr>
            
            <tr>               
           		<td><label for="apematDocente">Apellido Materno</label></td> 
                <td><input type="text" class="form-control" id="apematDocente" placeholder="Apellido Materno"></td>
                <td><button type="button" class="btn btn-success" name="btnbuscar">Buscar</button></td>
            </tr>
            
            <tr>  
            		
            </tr>
            
            
            <!-- 
            <tr>
                <td><label for="dni">DNI</label></td>
                <td><input type="text" class="form-control" id="dni" placeholder="DNI"></td>
            </tr>
            <tr>
                <td><label for="edad">Edad</label></td>
                <td><input type="text" class="form-control" id="edad" placeholder="Edad"></td>
            </tr>
            <tr>
                <td><label for="correo">Correo</label></td>
                <td><input type="email" class="form-control" id="correo" placeholder="Correo"></td>
            </tr>
            <tr>
                <td><label for="universidad">Universidad</label></td>
                <td><input type="text" class="form-control" id="universidad" placeholder="Universidad"></td>
            </tr>
             -->
        </table>       
                <div class="col-md-6">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>Código</th>
              <th>Nombre</th>
              <th>A. Paterno</th>
              <th>A. Materno</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>001</td>
              <td>Ruben</td>
              <td>García</td>
              <td>Farje</td>
            </tr>
            
            <!-- 
             <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
             -->
         
            </tr>           
          </tbody>
        </table>
        </div>
    </div>
    <div class="col-md-12">
    		<div class="col-md-11">
    		<table class="table">
             <tr>
                <td><label for="listarCurricula">Listar Currícula</label></td>
               
	            <td><select class="form-control" name="opcionCiclo" selected disable>
	            	  <option value="" disabled selected>4</option>
					  <option value="1">1</option>
					  <option value="2">2</option>
					  <option value="3">3</option>
					  <option value="4">4</option>
					  <option value="5">5</option>
					  <option value="6">6</option>
					  <option value="7">7</option>
					  <option value="8">8</option>
					  <option value="9">9</option>
					  <option value="10">10</option>
					  <option value="E1">E1</option>
			</select>
			    </td>
            
				<td><button type="button" class="btn btn-info" name="btnlistarcurr">Listar Curricula</button></td>
            </tr>
            
            </table>
            <table class="table table-striped">
						<thead>
							<th>Código</th>
							<th>Curso</th>
							<th>Ciclo</th>
							<th>Créditos</th>
							<th>Pre-Requisito</th>
							<th>Seleccionar</th>
						</thead>
						<tbody>
						<tr>
							<td>00041</td>
							<td>Algebra Lineal</td>
							<td>04</td>
							<td>05</td>
							<td>00031</td>
							<td><a href="#">Seleccionar</a></td>
						</tr>
						<tr>
							<td>00041</td>
							<td>Teoría y Diseño de Base de Datos</td>
							<td>04</td>
							<td>05</td>
							<td>00084</td>
							<td><a href="#">Seleccionar</a></td>
						</tr>
						<tr>
							<td>00111</td>
							<td>Física II</td>
							<td>04</td>
							<td>03</td>
							<td>00002</td>
							<td><a href="#">Seleccionar</a></td>
						</tr>
						<tr>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
						</tr>
						</tbody>
			</table>
			
			<table class="table table-bordered">
						<thead>
							<th>Curso Agregado</th>
							
							</th>
						</thead>
						<tbody>
						<tr>
							<td>Teoría y Diseño de Base de Datos</td>
							<td><a href="#">Eliminar</a></td>
						</tr>
						</tbody>
			</table>
            <!--  
          <table class="table table-bordered">
          <thead>
            <tr>
              <th>Curricula:</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td></td>
              <td><a href="#"></a></td>
            </tr>
            <tr>
            <td>Seleccionar Ciclo</td>
	            <td><select class="form-control" name="opcionCiclo" selected disable>
	            	  <option value="" disabled selected>Seleccionar</option>
					  <option value="1">1</option>
					  <option value="2">2</option>
					  <option value="3">3</option>
					  <option value="4">4</option>
					  <option value="5">5</option>
					  <option value="6">6</option>
					  <option value="7">7</option>
					  <option value="8">8</option>
					  <option value="9">9</option>
					  <option value="10">10</option>
					  <option value="E1">E1</option>
			    </td>
			</select>
            </tr>  
            <tr>
            	<td></td>
            	<td><button type="button" class="btn btn-info" name="btnCicloCurr">Aceptar</button></td>
            </tr>
          </tbody>
        </table>
        
        </div>
        <div class="col-md-6">
	        <table class="table-bordered">
	        <thead>
	            <tr>
	              <th>Cursos:</th>
	              <th></th>
	            </tr>
	          </thead>
	          <tbody>
	            <tr>
	              <td></td>
	              <td><a href="#">Asignar Curso</a></td>
	            </tr>
	            
	            <tr>
	            	<td></td>
	            	<td><button type="button" class="btn btn-info" name="btnCicloCurr">Aceptar</button></td>
	            </tr>
	          </tbody>
	        </table>
        </div>
        -->
        <div class="col-md-6">
        	<table class="table-hover">
        	<thead>
        		<tr>
					<th></th>
				</tr> 
        	</thead>
        	<tbody>
        		<tr>        			
        			<td>
        			<br><br>
        				<button type="button" class="btn btn-success" name="btnGuardar">Guardar</button>
        			</td>
        		</tr>
        	</tbody>
        	</table>
        </div>
    </div>
    <div class="row center-block">
    	<div class="col-md-3"> 
       	</div>
       	
    </div>
    <div class="col-md-4">
    <table class="table">
    <!-- 
    	<tr>
    		<td>
            <button type="button" name="btnasignar" class="btn btn-success">Asignar</button>
            </td>
            <td>
            <button type="button" name="btnaguardar" class="btn btn-primary">Guardar</button>
            </td>
            <td>
            <button type="button" name="btncancelar" class="btn btn-danger">Cancelar</button>
            </td>
        </tr>
        <tr>
        	<!-- 
       		 <td>
        	<label for="exampleInputFile">Subir Archivo</label><br>
        	
		    <input type="file" id="exampleInputFile">
		    </td>
    	</tr>
    	 -->
    </table>
        </div>
        
        
     
     </div>         
  </body>
</html>
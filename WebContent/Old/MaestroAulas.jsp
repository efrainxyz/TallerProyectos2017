<%-- 
    Document   : disponibilidadAulas
    Created on : 09-mar-2017, 23:30:24
    Author     : Eduardo Castillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Maestro Aulas</title>

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
                  <li><a href="#">Maestro Docentes</a></li>
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

    <div class="col-md-8">  
        <table class="table">
             <tr>
                <td><label for="agregarPabellon">Agregar pabellón</label></td>
                <td><input type="text" class="form-control" id="agregarPabellon" placeholder="Agregar Pabellon"></td>
                <td><button type="button" class="btn btn-info">Agregar</button></td>
            </tr>
            <tr>
                <td><label for="agregarAula">Agregar Aula</label></td>
                <td><input type="text" class="form-control" id="agregarAula" placeholder="Agregar Aula"></td>
                <td><button type="button" class="btn btn-info">Agregar</button></td>
            </tr>
            <tr>
                <td><label for="listadoPabellones">Listado de Pabellones</label></td>
                <td>
               		 <select class="form-control" id="listadoPabellones">
                        <option>Generales</option>
                        <option>Especialidades</option>
                        <option>Fia Data</option>
                     </select>
                </td>
                <td><label for="listadoAulas">Listado de Pabellones</label></td>
                <td>
               		 <select class="form-control" id="listadoAulas">
                        <option>101</option>
                        <option>102</option>
                        <option>103</option>
                     </select>
                </td>
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
                
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>Código</th>
              <th>Pabellón</th>
              <th>Aula</th>
              <th>Código</th>
              <th><th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td><a href="#">Eliminar</a></td>
              <td><a href="#">Modificar</a></td>
            </tr>
            <!--  
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td></td>
              <td> </td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              -->
            </tr>           
          </tbody>
        </table>
    </div>
    <div class="row center-block">
    	<div class="col-md-3"> 
       	</div>
       	
    </div>
    <div class="col-md-4">
    <table class="table">
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
		     -->
    	</tr>
    </table>
        </div>
        
        
     
     </div>         
  </body>
</html>
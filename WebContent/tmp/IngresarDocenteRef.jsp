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
    <title>Ingreso de disponibilidad Horaria de docente</title>

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
                  <li><a href="#">Agregar disponibilidad</a></li>
                  <li><a href="#">Agregar información personal</a></li>
                  <li><a href="#">Agregar datos de referidosl</a></li>
                  <li><a href="#">Agregar disponibilidad de referidos</a></li>
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
                <td><label for="nombres">Nombre(s)</label></td>
                <td><input type="text" class="form-control" id="nombres" placeholder="Nombre(s)"></td>
            </tr>
            <tr>
                <td><label for="apellidos">Apellidos</label></td>
                <td><input type="text" class="form-control" id="apellidos" placeholder="Apellido Paterno y Materno"></td>
            </tr>
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
        </table>       
                
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Institución</th>
              <th>Diploma</th>
              <th>Fecha</th>
              <th>Grado</th>
              <th>Documento</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td></td>
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
              <td></td>
            </tr>           
          </tbody>
        </table>        
    </div>
    <div class="col-md-4">
	    <table class="table">
	    	<tr>
	    		<td>
	            <button type="button" class="btn btn-success">Agregar Disponibilidad</button>
	            </td>
	        </tr>
	        <tr>
	        	<td>
	            <button type="button" class="btn btn-primary">Grabar Disponibilidad</button>
	            </td>
	        </tr>
	        <tr>
	       		 <td>
	        	<label for="exampleInputFile">Subir Archivo</label><br>
			    <input type="file" id="exampleInputFile">
			    </td>
	    	</tr>
	    </table>
     </div>
        
        
     
     </div>         
  </body>
</html>
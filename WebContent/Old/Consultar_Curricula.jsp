<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Consultar Currícula</title>

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
    <h1>Currícula</h1>
    
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
  	 
  	 <div class="col-md-7 ">
  	 <br>
  	 	<table class="table-condensed">
    			<tr>    				
    				<td class="dropdown">
						  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						    Elija Currícula:
						    <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
						    <li><a href="#">2016-I</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="#">2016-II</a></li>
						  </ul>
					</td>    	  	
					<td>
						<button name ="" id="" type="button" class="btn btn-warning">
  				    	<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
  				    	Mostrar  				    
  				    	</button>
					</td>						
    			</tr>
    			
    			<tr>
    				<td  class="col-sm-6">
    				<br><br>
    				<label for="nomcurr">Nombre Currícula</label>
  				    <input type="text" class="form-control" id="nomcurr" name="nomcurr" placeholder="Ingrese un nombre">
  				    </td><!-- 
  				    <td><br><br><br> <button name="" id="" type="button" class="btn btn-primary">Guardar</button></td>
  				    -->
    			</tr>
    			
    		</table>
    		
    		<table class="table table-bordered">
						<thead>
							<th>Código</th>
							<th>Curso</th>
							<th>Ciclo</th>
							<th>Créditos</th>
							<th>Pre-Requisito</th>
						</thead>
						<tbody>
						<tr>
							<td>00041</td>
							<td>Algebra Lineal</td>
							<td>04</td>
							<td>05</td>
							<td>00031</td>
						</tr>
						<tr>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
						</tr>
						</tbody>
			</table>
		  	 <table class="table table-hover">
		  	 	<tr>
		  	 		<div class="btn-group btn-group-justified" role="group" aria-label="...">
					  <div class="btn-group" role="group">
					    <button type="button" class="btn btn-success">Obtener Curricula</button>
					  </div>
					  <div class="btn-group" role="group">
					    <button type="button" class="btn btn-primary">Guardar</button>
					  </div>
					  <div class="btn-group" role="group">
					    <button type="button" class="btn btn-danger">Cancelar</button>
					  </div>
					</div>
		  	 	</tr>
		  	 </table>
  	 </div>
  	 <div class="col-md-5">
  	 <!--  
  	 	<table class="table table-hover">
  	 		<tr>
  	 		<td><button name="" id="" type="button" class="btn btn-success">Obtener Currícula</button></td>
  	 		</tr>
  	 		<tr>
  	 		<td><button name="" id="" type="button" class="btn btn-primary">Guardar</button></td>
  	 		</tr>
  	 		<tr>
  	 		<td><button name="" id="" type="button" class="btn btn-danger">Cancelar</button></td>
  	 		</tr>
  	 		
  	 	</table>
  	 -->
  	 </div>
  	 </div>
  	 </form> 	  
  	  

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../boostrap/js/bootstrap.min.js"></script>
  </body>
</html>
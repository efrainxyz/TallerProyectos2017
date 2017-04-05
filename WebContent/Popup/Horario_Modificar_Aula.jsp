<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Modificar Aula</title>

    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

  </head>
  <body>
    <h1>Modificar Aula</h1>
    
    <div class="container-fluid">
    
    <div class="row">
    	<div class="col-xs-12 col-md-8">
		<div class="col-xs-6 col-md-4">  
		<br>	
		<label>Pabellón</label>					
	  					<select class="form-control">
						  <option>Generales</option>
						  <option>Fia-Data</option>
						  <option>Especialidades</option>
						  <option>Laboratorio</option>
						</select>		
    	</div>   	
    	</div>
    	
    	<div class="col-xs-12 col-md-8">
		<div class="col-xs-6 col-md-4">
		<br>  
    		<div class="radio">
			  <label>
			    <input type="radio" name="optionsRadios" id="optionsRadios1" value="aula" checked>
			    Aula
			  </label>
			</div>
			<div class="radio">
			  <label>
			    <input type="radio" name="optionsRadios" id="optionsRadios2" value="laboratorio">
			    Laboratorio
			  </label>
			</div>
			<div class="radio">
			  <label>
			    <input type="radio" name="optionsRadios" id="optionsRadios3" value="taller">
			    Taller
			  </label>
			</div>
    	</div>
    	</div>
    	
    	<div class="col-xs-12 col-md-8">
    	<div class="col-xs-6 .col-sm-6 .col-md-8">
    				<div class="col-xs-6 col-sm-6 col-md-8">
    					Hora Inicio   				
    				</div>
  					<div class="col-xs-6 col-md-4">  						
	  					<select class="form-control">
						  <option>08:00</option>
						  <option>2</option>
						  <option>3</option>
						  <option>4</option>
						  <option>5</option>
						</select>		
    				</div>
    	</div>
    	<div class="col-xs-6 .col-sm-6 .col-md-8">
    				<div class="col-xs-6 col-sm-6 col-md-8">
    					Día   				
    				</div>
  					<div class="col-xs-6 col-md-4">  						
	  					<select class="form-control">
						  <option>Lunes</option>
						  <option>Martes</option>
						  <option>Miercoles</option>
						  <option>Jueves</option>
						  <option>Viernes</option>
						  <option>Sabado</option>
						</select>		
    				</div>
    	</div>
    	<div class="col-xs-6">
    			<br>
    				<div class="col-xs-6 col-sm-6 col-md-8">	
    					Horario Fin		
    				</div>
  					<div class="col-xs-6 col-md-4">  						
	  					<select class="form-control">
						  <option>08:00</option>
						  <option>2</option>
						  <option>3</option>
						  <option>4</option>
						  <option>5</option>
						</select>		
    				</div>
			    	</div>
		<div class="col-xs-6">
		<br>
			<button id="" name="" type="button" class="btn btn-block btn-success">Agregar</button>
		</div>
		</div>
			    	
    </div><!-- cierre class row -->
    <div class="row"></div>
    <!-- div table dia vs hora -->
    	<div class="row">
    	<div class="col-xs-12 col-sm-12 col-md-6">
			<table id="table1" class="table table-striped">
				<thead>
					<tr>
						<th>Dia/Hora</th>
						<th>Hora Inicio</th>
						<th>Hora Fin</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Lunes</td>
						<td>08:00</td>
						<td>10:15</td>
					</tr>
					<tr>
						<td>Lunes</td>
						<td>10:15</td>
						<td>12:15</td>
					</tr>
				</tbody>
			</table>
    	</div>
    	</div>
    	<!-- fin tabla -->
    	<!-- div botones 1-->
    	<div class="row">
    	<div class="col-xs-12 col-sm-12 col-md-6">
			<div class="col-xs-6 col-md-4">
			<button id="" name="" type="button" class="btn btn-block btn-primary">Buscar</button>
			</div>
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4">
			<button id="" name="" type="button" class="btn btn-block btn-warning">Limpiar</button>
			</div>
    	</div>
    	</div>
    	<!-- fin div botones 1-->
    	<br>
    	<!-- div tabla aula-->
    	<div class="row">
    	<div class="col-xs-12 col-sm-12 col-md-6">
			<table id="tableaula" class="table table-bordered">
				<thead>
					<tr>
						<th>Aula</th>
						<th>Opciones</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>101</td>
						<td><a href="">Seleccionar</a></td>
					</tr>
					<tr>
						<td>102</td>
						<td><a href="">Seleccionar</a></td>
					</tr>
					<tr>
						<td>103</td>
						<td><a href="">Seleccionar</a></td>
					</tr>
				</tbody>
			</table>
    	</div>
    	</div>
    	
    	<!-- div botones-->
    	<div class="row">
    	<div class="col-xs-12 col-sm-12 col-md-6">
			<div class="col-xs-6 col-md-4">
			<button id="" name="" type="button" class="btn btn-block btn-success">Guardar</button>
			</div>
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4">
			<button id="" name="" type="button" class="btn btn-block btn-danger">Cancelar</button>
			</div>
    	</div>
    	</div>
    	<!-- fin div botones -->
    	
    	
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
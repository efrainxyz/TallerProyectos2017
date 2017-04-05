<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Modificar Docente</title>

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
    <h1>&nbsp;&nbsp;Modificar</h1>
    <div class="container-fluid">
    <div class="row center-block">    
    <!-- div radiobuttons -->
    	<div class="row">
    	<div class="col-xs-12 col-sm-6 col-md-12 ">
			<div class="radio">
			  <label>
			    <input type="radio" name="radiob" id="radiob" value="docente" checked="true">
			    Docente
			  </label>
			</div>
			<div class="radio">
			  <label>
			    <input type="radio" name="radiob" id="radiob" value="referido">
			    Referido
			  </label>
			</div>
		</div>
        </div>
    <!-- div hora y dia -->
    	<div class="row">
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
    			<!-- <br> -->
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
    	<div class="col-xs-6"></div>
    	</div>
    	
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
    	
    	<!-- div botones-->
    	<div class="row">
    	<div class="col-xs-12 col-sm-12 col-md-6">
			<div class="col-xs-6 col-md-4">
			<button id="" name="" type="button" class="btn btn-block btn-primary">Buscar</button>
			</div>
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4">
			<button id="" name="" type="button" class="btn btn-block btn-success">Limpiar</button>
			</div>
    	</div>
    	</div>
    	
    	<!-- div tabla docente-->
    	<div class="row">
    	<div class="col-xs-12 col-sm-12 col-md-6">
    	<br>
			<table id="table-1" class="table table-bordered">
				<thead>
					<tr>
						<th>Codigo</th> <!-- Codigo para luego jalar cuando se seleccione -->
						<th>Docente</th>
						<th>Seleccionar</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>D001</td>
						<td>Ruben Garcia Farje</td>
						<td><a href="">Seleccionar</a></td>
					</tr>
					<tr>
						<td>D001</td>
						<td>Yamela Amparo Valenzuela Tasayco</td>
						<td><a href="">Seleccionar</a></td>
					</tr>
				</tbody>
			</table>
    	</div>
    	</div>
    <!-- volver -->
    	<div class="row">
    	<div class="col-xs-1 col-sm-1 col-md-1">
    		<a href="http://localhost:8080/taller001/Horario/generar_propuesta_horario.jsp">Volver</a>
    	</div>
    	</div>
    	
    
	</div>
	<!-- fin div principal -->
	</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../boostrap/js/bootstrap.min.js"></script>
    <script>
    function abrir_archivo() {
      window.open("http://localhost:8080/taller001/Popup/Docente_Documentos.jsp", null, "height=300, width=600, status=yes, toolbar=no, menubar=no, location=center");
    }
  	</script>
  </body>
</html>
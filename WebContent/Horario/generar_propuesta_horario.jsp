<!-- 
 CU 5: Generar propuestas de horario.
 ECS
 
 OBTENER EL CODIGO DE la seccion Y AÑADIRLO COMO FILTRO AL POPUP DE MODIFICAR
 filtrar en el popup pordocentes que estan contratados e interesados.
 
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generar propuestas de horario</title>
	<!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
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
                <!--  -->
                <ul class="nav navbar-nav">
                  <li class="active"><a href="#">Inicio</a></li>
                  <li><a href="#">Generar propuesta de horario</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span>Opciones</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Salir</a></li>
                 </ul>
            </div>
        </nav>         
    </div>
    
    <div class="row center-block">
    
    	<!-- div titulo -->
    	<div class="col-md-12">
    	<h2>Generar Propuesta de Horario</h2>
    	</div>
    	
    	<!-- div text -->
    	<div class="col-md-6">
    		<label for="curso">Curso</label>
  			<input type="text" class="form-control" id="curso" name="curso" placeholder="Ingresar Ciclo">   	
    	</div>
    	<div class="col-md-6">
    		<label for="codigo">Código</label>
  			<input type="text" class="form-control" id="codigo" name="codigo" placeholder="Ingresar Codigo">  				    
    	</div>
    	<div class="col-lg-6">
    		<label for="ciclo">Ciclo</label>
  			<input type="text" class="form-control" id="ciclo" name="ciclo" placeholder="Ingresar Ciclo">  				    
    	</div>
  		<div class="col-lg-6">
  		<br>
  			<button name ="" id="" type="button" class="btn btn-primary">Mostrar</button>
    	</div>    	
    	<div class="col-lg-12">
    		<table class="table table-hover">
    			<tr class="col-lg-6">
    				<br>
    				<td><button name ="" id="" type="button" class="btn btn-primary">EXPORTAR</button></td>
    				<td><button name ="" id="" type="button" class="btn btn-success">GUARDAR</button></td>
    				<td><button name ="" id="" type="button" class="btn btn-danger">CANCELAR</button></td>
    				
    			<tr>
    		</table>  		
    	</div>
    	
    	<!-- div tabla horario -->
    	<div class="col-xs-12 col-md-8">
    		<table class="table table-bordered">
    			<thead>
    				<th>Ciclo</th><th>Curso</th>
    				<th>Docente</th><th>Sección</th>
    				<th>Aula</th>
    				
    				<th>LU</th><th>MA</th><th>MI</th><th>JU</th><th>VI</th><th>SA</th>
    				    				
    				<th>Modificar Docente</th><th>Modificar Aula</th>
    			</thead>
    			<tbody>
    				<tr>
    					<td>1</td> <td>2</td> <td>3</td> <td>4</td> <td>5</td>
    					<td>6</td> <td>7</td> <td>8</td> <td>9</td> <td>10</td>
    					<td>11</td> 
    					<td><button type="button" class="btn btn-block btn-success" onclick="abrir_pop_HMD();">
						  <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>Editar
						</button>
						</td> 
    					<td>
						<button type="button" class="btn btn-block btn-success" onclick="abrir_pop_Horario_Modificar_Aula();">
						<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>Editar
						</button>
						</td>
    				</tr>
    			</tbody>
    		</table>
    	</div>
    	
  <!-- Fin div principal -->
    </div>
    
	<script src="../javascript1/miscript.js"></script>

    <!-- 
	<script>
    function abrir_archivo() {
      window.open("http://localhost:8080/taller001/Popup/Horario_Modificar_Docente.jsp", null, "height=300, width=600, status=yes, toolbar=no, menubar=no, location=no");
    }
  	</script>
  	 -->
</body>
</html>
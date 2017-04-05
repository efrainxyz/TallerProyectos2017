<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
  </head>
  <body>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!--  <script src="../bootstrap/js/bootstrap.min.js"></script>-->
    
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
    </table>
        </div>
        
        
     
     </div>         
  </body>
</html>
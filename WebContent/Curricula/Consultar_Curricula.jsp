<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Consultar Curr�cula</title>

    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

  </head>
  <body>
    <h1>Curr�cula</h1>

  	  
  	 <div class="row center-block">
  	 
  	 <div class="col-md-7 ">
  	 <br>
  	 	<table class="table-condensed">
    			<tr>    				
    				<td class="dropdown">
						  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						    Elija Curr�cula:
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
    				<label for="nomcurr">Nombre Curr�cula</label>
  				    <input type="text" class="form-control" id="nomcurr" name="nomcurr" placeholder="Ingrese un nombre">
  				    </td><!-- 
  				    <td><br><br><br> <button name="" id="" type="button" class="btn btn-primary">Guardar</button></td>
  				    -->
    			</tr>
    			
    		</table>
    		
    		<table class="table table-bordered">
						<thead>
							<th>C�digo</th>
							<th>Curso</th>
							<th>Ciclo</th>
							<th>Cr�ditos</th>
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
  	 		<td><button name="" id="" type="button" class="btn btn-success">Obtener Curr�cula</button></td>
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
  </body>
</html>
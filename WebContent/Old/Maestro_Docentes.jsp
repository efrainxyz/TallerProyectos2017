<!-- 
 CU 6: Maestro Docente.
 ECS
 htzevallos@gmail.com
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maestro Docente</title>
	<!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<h1><img src="../imagenes/bannerusmp.png" alt="USMP" /></h1>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
 	<!-- datepicker -->
 		  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		  <link rel="stylesheet" href="/resources/demos/style.css">
		  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		  <script>
		  $( function() {
		    $( "#fechainicio" ).datepicker({
			    changeMonth:true,
				changeYear:true,
				yearRange:'1965:2017',
				dateFormat:'yy-mm-dd'
			    });
		    $( "#fechafin" ).datepicker({
		    	changeMonth:true,
				changeYear:true,
				yearRange:'1965:2017',
				dateFormat:'yy-mm-dd',
				duration:"slow",
				showButtonPanel: true
			    });
		  } );
		  </script>    
	<!-- fin datepicker -->
    
  	<div class="row col-lg-11 center-block">        
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!--  -->
                <ul class="nav navbar-nav">
                  <li class="active"><a href="#">Inicio</a></li>
                  <li><a href="#">Disponibilidad de aulas</a></li>
                  <li><a href="#">Maestro Docentes</a></li>
                  <li><a href="#">Maestro aulas</a></li>
                  <li><a href="#">Maestro curricula</a></li>
                  <li><a href="#">Maestro cursos</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span>Opciones</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Salir</a></li>
                 </ul>
            </div>
        </nav>         
    </div>
    <form method="" action="">
    <div class="row center-block">
    
    	<div class="col-md-12">
    		<table class="table-condensed">
    			<tr>    				
    				<td><button name ="" id="" type="button" class="btn btn-primary">Nuevo</button></td>
    				
    				<td></td>    				
    			</tr>
    		</table>
    	
    			<!--  -->
    			
    			<div class="col-md-2">
    			<table class="table table-bordered">
    			<tr>
    			<br>
	    			<td class="dropdown">
						  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						    Maestros
						    <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
						    <li><a href="http://localhost:8080/taller001/Cursos/MaestroCursos.jsp">Cursos</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="http://localhost:8080/taller001/Aulas/MaestroAulas.jsp">Aulas</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="http://localhost:8080/taller001/Curricula/Consultar_Curricula.jsp">Curricula</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="http://localhost:8080/taller001/Docentes/Maestro_Docentes.jsp">Docentes</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="#">Perfiles</a></li>
						  </ul>
					</td>
				</tr>
    			</table>
    			</div>
    			
			<div class="col-md-10">
			<a class="btn btn-primary" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
			<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
 				Datos Personales
			</a>
			
			<div class="collapse" id="collapseExample"> 
    		<table class="table table-striped">    		
    			<tr>
    				<br>
    				<td class="col-sm-6">
    				<label for="nombre">Nombre(s)</label>
  				    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre(s)">
  				    </td>
  				    <td>
  				    <br>
  				    <button name ="" id="" type="button" class="btn btn-primary">
  				    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
  				    Buscar  				    
  				    </button>
  				    </td>
    			</tr>
    			<tr>
    				<td  class="col-sm-6">
    				<label for="apellidpaterno">Apellido Paterno</label>
  				    <input type="text" class="form-control" id="apellidpaterno" name="apellidpaterno" placeholder="Apellido Paterno">
  				    </td>
    				<td  class="col-sm-6">
    				<label for="apellidomaterno">Apellido Materno</label>
  				    <input type="text" class="form-control" id="apellidomaterno" name="apellidomaterno" placeholder="Apellido Materno">
  				    </td>
    			</tr>
    			<tr>
    				<td  class="col-sm-6">
    				<label for="pais">País/Nacionalidad</label>
  				    <input type="text" class="form-control" id="pais" name="pais" placeholder="País/Nacionalidad">
  				    </td>
    				<td  class="col-sm-6">
    				<label for="numdoc">N°DNI / Carnet de Extranjería</label>
  				    <input type="text" class="form-control" id="numdoc" name="numdoc" placeholder="Número de Documento">
  				    </td>
    			</tr>
    			</table>
    		</div>
    			<div><br></div>
    			<table class="table table-striped">
    			<tr>
    				<td class="col-sm-6"><label for="fechainicio">Fecha de Ingreso como Docente</label>
  				    <input type="text" class="form-control" id="fechainicio" name="fechainicio">
  				    </td>
    				<td class="col-sm-6"><label for="fechafin">Fecha Fin</label>
  				    <input type="text" class="form-control" id="fechafin" name="fechafin" >
  				    </td>
    			</tr>
    			<tr>
    				<td  class="col-sm-6">
    				<label for="pais">¿Era Docente Universitario a la entrada en vigencia de la ley 30220?</label>
  				    <br>
  				    &emsp;
  				    <label>
    				<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
    					Si
  					</label>
  					&emsp;&emsp;
  					<label>
   					 <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
   					 	No
  					</label>
  				    
  				     </td>
    				<td  class="col-sm-6">
  				    
					</td>
    			</tr>
    			<!--  -->
    			<tr>
    				<td  class="col-sm-6">
    				<label for="gradoAc">Mayor Grado Académico</label>
  				    <input type="text" class="form-control" id="gradoAc" name="gradoAc" placeholder="Mayor Grado Académico">
  				    </td>
    				<td  class="col-sm-6">
    				<label for="mencion">Mención del Mayor Grado Académico</label>
  				    <input type="text" class="form-control" id="mencion" name="mencion" placeholder="Mención">
  				    </td>
    			</tr>
    			<!--  -->
    			<!--  -->
    			<tr>
    				<td  class="col-sm-6">
    				<label for="univGA">País/Universidad que otorgó el Mayor Grado</label>
  				    <input type="text" class="form-control" id="univGA" name="univGA" placeholder="Ingrese el País/Universidad">
  				    </td>
    				<td  class="col-sm-6">
  				    </td>
    			</tr>
    			<!--  -->
    			<!--  -->
    			<tr>
    				<td  class="col-sm-6">
    				<label for="gradoAc">Mayor Grado Académico</label>
  				    <input type="text" class="form-control" id="gradoAc" name="gradoAc" placeholder="Mayor Grado Académico">
  				    </td>
    				<td  class="col-sm-6">
    				<label for="mencion">Mención del Mayor Grado Académico</label>
  				    <input type="text" class="form-control" id="mencion" name="mencion" placeholder="Mención">
  				    </td>
    			</tr>
    			<!--  -->
    			
    			<!--  -->
    			<tr>
    			<td class="col-sm-6">Niveles de programa de estudio</td>
    			<td class="col-sm-6"></td>
    			</tr>
    			<tr>
    				<td  class="col-sm-6">
    				<label for="pregrado">Pregrado</label>
  				    <input type="text" class="form-control" id="pregrado" name="pregrado" placeholder="SI/NO">
  				    </td>
    				<td  class="col-sm-6">
    				<label for="maestría">Maestría</label>
  				    <input type="text" class="form-control" id="maestría" name="maestría" placeholder="SI/NO">
  				    </td>
    			</tr>
    			<tr>
    				<td  class="col-sm-6">
    				<label for="doctorado">Doctorado</label>
  				    <input type="text" class="form-control" id="doctorado" name="doctorado" placeholder="SI/NO">
  				    </td>
    				<td  class="col-sm-6">
    				 </td>
    			</tr>
    			<!--  -->
    			
    			<!--  -->
    			<tr>
    				<td  class="col-sm-6">
    				<label for="categoria">Categoría</label>
  				    <input type="text" class="form-control" id="categoria" name="categoria" placeholder="Contratado">
  				    </td>
    				<td  class="col-sm-6">
    				 </td>
    			</tr>
    			<!--  -->
    			
    			<!--  -->
    			<tr>
    				<td  class="col-sm-6">
    				<label for="regimen">Regimen de Dedicación</label>
  				    <input type="text" class="form-control" id="regimen" name="regimen" placeholder="Tiempo Completo">
  				    </td>
    				<td  class="col-sm-6">
    				 </td>
    			</tr>
    			<!--  -->
    			
    			<!--  -->
    			<tr>
    			<td class="col-sm-6">N° DE HORAS SEMANALES FIJADOS POR LA UNIVERSIDAD</td>
    			<td class="col-sm-6"></td>
    			</tr>
    			<tr>
    				<td  class="col-sm-6">
    				<label for="clases">Clases</label>
  				    <input type="text" class="form-control" id="clases" name="clases" placeholder="3">
  				    </td>
    				<td  class="col-sm-6">
    				<label for="otrasA">Otras Actividades</label>
  				    <input type="text" class="form-control" id="otrasA" name="otrasA" placeholder="37">
  				    </td>
    			</tr>
    			<tr>
    				<td  class="col-sm-6">
    				<label for="ths">Total Horas Semanales</label>
  				    <input type="text" class="form-control" id="ths" name="ths" placeholder="40">
  				    </td>
    				<td  class="col-sm-6">
    				 </td>
    			</tr>
    			<!--  -->
    			
    			<!--  -->
    			<tr>
    				<td  class="col-sm-6">
    				<label for="docInv">Docente Investigador</label>
  				    <input type="text" class="form-control" id="docInv" name="docInv" placeholder="Si/No">
  				    </td>
    				<td  class="col-sm-6">
    				 </td>
    			</tr>
    			<!--  -->
    			
    			<!--  -->
    			<tr>
    				<td  class="col-sm-6">
    				<label for="dina">Docente Registrado en DINA</label>
  				    <input type="text" class="form-control" id="dina" name="dina" placeholder="Si/No">
  				    </td>
    				<td  class="col-sm-6">
    				 </td>
    			</tr>
    			<!--  -->
    			
    			<!--  -->
    			<tr>
    				<td  class="col-sm-6">
    				<label for="perAca">Periodo Académico</label>
  				    <input type="text" class="form-control" id="perAca" name="perAca" placeholder="2016-I">
  				    </td>
    				<td  class="col-sm-6">
    				 </td>
    			</tr>
    			<!--  -->
    			<!--  -->
    			<tr>
    				<td  class="col-sm-6">
    				<label for="observ">Observaciones</label>
  				    <input type="text" class="form-control" id="observ" name="observ" placeholder="">
  				    </td>
    				<td  class="col-sm-6">
    				 </td>
    			</tr>
    			<!--  -->
    			
    			<tr>
    				<td class="col-sm-6">
    				<label for="clave">Contraseña Temporal</label>
  				    <input type="text" class="form-control" id="clave" name="clave" placeholder="Contraseña temporal">
  				    </td>
  				    <td>
  				    <label>Opciones:</label>
  				    <br>
    				<button name ="" id="" type="button" class="btn btn-success">Modificar</button>
    				<button name ="" id="" type="button" class="btn btn-warning">Eliminar</button>
  				    </td>
    			</tr>
    			<tr>    			
  				    <td class="col-sm-6">  	
    				<button name ="btnguardar" id="btnguardar" type="button" class="btn btn-block btn-primary">
    				<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>
    				Guardar
    				</button>
  				    </td>
  				    <td class="col-sm-6">  	    <!-- btn btn-block btn-warning -->
    				<button name ="" id="" type="button" class="btn btn-block btn-danger">
    				<span class="glyphicon glyphicon-ban-circle" aria-hidden="true"></span>
    				Cancelar
    				</button>
  				    </td>
    			</tr>    			
    			<!--
    			<tr>    			
  				    <td class="col-sm-6">  	    
    				<button name ="btnverDoc" id="btnverrDoc" type="button" class="btn btn-primary">Ver Documentos</button>
  				    </td>
  				    <td class="col-sm-6">
  				    </td>
    			</tr>
    			  -->
    		</table>
    		<table class="table table-responsive">
    			<tr>
    			<td><button name ="" id="" type="button" class="btn btn-block btn-info">Visualizar Todos</button></td>
    			</tr>
    		</table>
    		
    		<table class="table table-bordered">
    			<thead>    				
    					<th>Codigo</th>
    					<th>Datos</th>
    					<th>Ver Documento</th>
    			</thead>
    			<tbody>
    				<tr>
    					<td>0001</td>
    					<td>Alejandra Vargas</td>
    					<td><button type="button" class="btn btn-block btn-success" onclick="abrir_pop_MD();">
						  <span class="glyphicon glyphicon-file" aria-hidden="true"></span>Archivos
						</button>
						</td>
    				</tr>
    			</tbody>
    		</table>
    		
    		    		
    		</div>
    	</div> 
    	  	
    </div>
    
    </form>


	<script type="text/javascript" src="../jquery/jquery.js"></script>
	<script type="text/javascript" src="../jquery/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../jquery/jquery-ui.min.js"></script>	
	<script type="text/javascript" src="../javascript1/miscript.js"></script>
</body>
</html>
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
    <!-- bootstrap.min.js actualiza en el maestro sin que uno solicite , lo dejo como comentario
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    -->
    
    
    <script type="text/javascript" src="../javascript1/miscript.js"></script>
    
    
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
    	<div class="row">
			 <div class="col-xs-8 col-md-8">
    				<!-- Collapse -->
    				<div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingOne">
					      <h4 class="panel-title">
					        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					          Datos Personales
					        </a>
					      </h4>
					    </div>
					    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
					      <div class="panel-body">
					      <div class="row">
					       	<div class="col-xs-6 col-md-6">
						      	<label for="nombre">Nombre(s)</label>
	  				   			<input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre(s)">
  				   		   	</div>
  				   		   <div class="col-xs-6 col-md-6">
  				   		   		<!--  -->
  				   		   </div>
  				    	  </div>
  				    	  <div class="row">
  				    	  		<div class="col-xs-6 col-md-6">
  				    	  		<label for="apellidpaterno">Apellido Paterno</label>
			  				    <input type="text" class="form-control" id="apellidpaterno" name="apellidpaterno" placeholder="Apellido Paterno">
			  				    </div>
  				   		   		<div class="col-xs-6 col-md-6">
			    				<label for="apellidomaterno">Apellido Materno</label>
			  				    <input type="text" class="form-control" id="apellidomaterno" name="apellidomaterno" placeholder="Apellido Materno">
			  				    </div>
  				    	  </div>
  				    	  <div class="row">
  				    	  		<div class="col-xs-6 col-md-6">
  				    	  		<label for="pais">País / Nacionalidad</label>
			  				    <input type="text" class="form-control" id="pais" name="pais" placeholder="País/Nacionalidad">
			  				    </div>
  				   		   		<div class="col-xs-6 col-md-6">
			    				<label for="numdoc">N°DNI / Carnet de Extranjería</label>
			  				    <input type="text" class="form-control" id="numdoc" name="numdoc" placeholder="Número de Documento">
			  				    </div>
  				    	  </div>
  				    	  <div class="row">
  				    	  		<div class="col-xs-6 col-md-6">
  				    	  		<label for="fechainicio">Fecha de Ingreso como Docente</label>
			  				    <input type="text" class="form-control" id="fechainicio" name="fechainicio">
			  				    </div>
  				   		   		<div class="col-xs-6 col-md-6">
  				   		   		<!--  
			    				<label for="fechafin">Fecha Fin</label>
			  				    <input type="text" class="form-control" id="fechafin" name="fechafin" >
			  				    -->
			  				    </div>
			  				    <div class="col-xs-6 col-md-6">
			  				    <br>
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
			  				    </div>
  				    	  </div>
					    </div>
					</div>
					</div>
					<!--  -->
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingTwo">
					      <h4 class="panel-title">
					        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					          Grados Académicos
					        </a>
					      </h4>
					    </div>
					    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
					       <div class="panel-body">
						        <div class="row">
  				    	  		<div class="col-xs-6 col-md-6">
  				    	  		<label for="gradoAc">Mayor Grado Académico</label>
			  				    <input type="text" class="form-control" id="gradoAc" name="gradoAc" placeholder="Mayor Grado Académico">
  				    			</div>
  				   		   		<div class="col-xs-6 col-md-6">
  				   		   		<label for="mencion">Mención del Mayor Grado Académico</label>
  				    			<input type="text" class="form-control" id="mencion" name="mencion" placeholder="Mención">
  				    			</div>
  				    	  		</div>
  				    	  		<div class="row">
  				    	  		<div class="col-xs-6 col-md-6">  				   		   		
  				   		   		<label for="univGA">Universidad que otorgó el Mayor Grado</label>
  				    			<input type="text" class="form-control" id="univGA" name="univGA" placeholder="Universidad">  				    			</div>
  				    			<div class="col-xs-6 col-md-6">
  				    	  		<label for="paisunivGA">País/Universidad que otorgó el Mayor Grado</label>
			  				    <input type="text" class="form-control" id="paisunivGA" name="paisunivGA" placeholder="Ingrese el País/Universidad">
			  				    </div>
  				    	  		</div>
  				    	 </div>
					    </div>
					    </div>
					<!--  -->
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					          Niveles de Programa de Estudio en los que da Clases el Docente
					        </a>
					      </h4>
					    </div>
					    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
					      <div class="panel-body">
					           <div class="col-xs-6 col-md-6">
				    		   <label for="pregrado">Pregrado&nbsp;&nbsp;&nbsp;</label>
				  			   <label>
			    			   <input type="radio" name="opcpregrado" id="opcpregado1" value="opcpregado1" checked>
			    					Si
			  				   </label>
			  					&emsp;&emsp;
			  				   <label>
			   				   <input type="radio" name="opcpregrado" id="opcpregado2" value="opcpregado2">
			   					 	No
			  				   </label>
	  				   		   </div>
	  				   		   <div class="col-xs-6 col-md-6">
				    		   <label for="maestría">Maestría&nbsp;</label>
				  			   <label>
			    			   <input type="radio" name="opcmaestria" id="opcmaestria1" value="opcmaestria1" checked>
			    					Si
			  				   </label>
			  					&emsp;&emsp;
			  				   <label>
			   				   <input type="radio" name="opcmaestria" id="opcmaestria2" value="opcmaestria2">
			   					 	No
			  				   </label>
							   </div>
	  				   		   <div class="col-xs-6 col-md-6">
	  				   		   <label for="doctorado">Doctorado&nbsp;</label>
  				  			   <label>
			    			   <input type="radio" name="opcdoctor" id="opcdoctor1" value="opcdoctor1" checked>
			    					Si
			  				   </label>
			  					&emsp;&emsp;
			  				   <label>
			   				   <input type="radio" name="opcdoctor" id="opcdoctor2" value="opcdoctor2">
			   					 	No
			  				   </label>
  				  			   </div>
					       </div>
					    </div>
					  </div>
					  <!--  -->
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="heading4">
					      <h4 class="panel-title">
					        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
					          N° Horas Semanales Fijadas Por La Universidad
					        </a>
					      </h4>
					    </div>
					    <div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading4">
					       <div class="panel-body">
						        <div class="row">
  				    	  		<div class="col-xs-6 col-md-6">
  				    	  		<label for="nclases">Clases</label>
			  				    <input type="text" class="form-control" id="nclases" name="nclases" placeholder="Cantidad de Horas de Clase" onchange="sumar(this.value)">
  				    			</div>
  				   		   		<div class="col-xs-6 col-md-6">
  				   		   		<label for="notras">Otras Actividades</label>
  				    			<input type="text" class="form-control" id="notras" name="notras" placeholder="Cantidad de Horas de Otras Actividades" onchange="sumar(this.value)">
  				    			</div>
  				    	  		</div>
  				    	  		
  				    	  		<div class="row">
  				    	  		<div class="col-xs-6 col-md-6">  		
  				    	  		<label for="ntotal">Total de Horas Semanales</label>  				    	  		  			
  				   		   		<input type="text" class="form-control" id="ntotal" name="ntotal" value="" disabled> 
  				   		   		<span style="display: none" id="ntotalspan"></span>	    			
  				    	  		<!--
  				    	  		<table class="table table-bordered">
  				    	  		<tr><td><span id="ntotal"></span></td></tr>
  				    	  		<tr><td><input type="text" id="ntotal1" value=""></td></tr>
  				    	  		</table> 		   		   		 				    			
  				    			-->     				    					 			
  				    			</div>
  				    			<div class="col-xs-6 col-md-6">
  				    	  		<!--  -->
  				    	  		</div>
  				    	  		</div>
  				    	  		
  				    	 </div>
					    </div>
					    </div>
					    
					    <div class="row">
					    <div class="col-xs-12 col-md-18">
					    	<div class="row">
  				    	  		<div class="col-xs-6 col-md-6">
  				    	  		<button name ="btnguardar" id="btnguardar" type="button" class="btn btn-block btn-primary">
			    				<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>
			    				Guardar
			    				</button>
  				    	  		</div>  				    	  		
  				    	  		<div class="col-xs-6 col-md-6">
  				    	  		<button name ="" id="" type="button" class="btn btn-block btn-danger">
			    				<span class="glyphicon glyphicon-ban-circle" aria-hidden="true"></span>
			    				Cancelar
			    				</button>
  				    	  		</div>
  				    	  		</div>
					    </div>
					    </div>
					    
					    <div class="row">
					    <div class="col-xs-12 col-md-18">
					    <br>
					    <button name ="" id="" type="button" class="btn btn-block btn-info">Visualizar Todos</button>
    					</div>
    					</div>
    					
    					<div class="row">
					    <div class="col-xs-12 col-md-18">
					    <br>
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
			    	<!-- fin collapse -->
			 </div>

					<!-- botones lateral derecho -->
			 <div class="col-xs-4 col-md-2">			 	
			 	<table class="table table-hover">
			 		<thead>
			 		<th>
			 				<h4 align="center">Opciones</h4>
			 		</th>
			 		</thead>
			 		<tr>
			 		<td>
			 			<button name ="" id="" type="button" class="btn btn-block btn-primary">
			  			  Buscar  	&ensp;			    			  			  
			  			 <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
			  			 </button>
			 		</td>
			 		</tr>
			 		
			 		<tr>
			 		<td>
			 			<button name ="" id="" type="button" class="btn btn-block btn-success">
			 			Modificar	&ensp;
			 			<span class="glyphicon glyphicon-floppy-saved" aria-hidden="true"></span>
			 			</button>
			 		</td>
			 		</tr>
			 		
			 		<tr>
			 		<td>
			 			<button name ="" id="" type="button" class="btn btn-block btn-danger">
			 			Eliminar	&ensp;
			 			<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
			 			</button>
			 		</td>
			 		</tr>
			 	</table>
			 </div>
			 <!-- fin div size 4 -->
			 <!-- div size 2 -->
			 <div class="col-xs-4 col-md-2">
			 </div>
			 
	</div>
	<!-- se cierra row principal -->
  </body>
  <!--  -->
	<script type="text/javascript">
	function sumar (valor) {
	    var total = 0;	
	    valor = parseInt(valor); // Convertir el valor a un entero (número).		
	    total = document.getElementById('ntotalspan').innerHTML;		
	    // Aquí valido si hay un valor previo, si no hay datos, le pongo un cero "0".
	    total = (total == null || total == undefined || total == "") ? 0 : total;		
	    /* Esta es la suma. */
	    total = (parseInt(total) + parseInt(valor));		
	    // Colocar el resultado de la suma en el control "span".
	    document.getElementById('ntotalspan').innerHTML = total;
	    document.getElementById('ntotal').value = total;
	}
	</script>
	<!--  -->
</html>



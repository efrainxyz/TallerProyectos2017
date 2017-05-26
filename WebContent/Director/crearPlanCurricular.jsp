
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

 	<meta name="viewport" content="width=device-width" />
    <link rel="icon" href="<%=request.getContextPath()%>/images/bcp.ico">
    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/Bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/Bootstrap/css/dashboard.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/Bootstrap/js/ie-emulation-modes-warning.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery.dataTables.css">
	<link href="<%=request.getContextPath()%>/Bootstrap/css/estilo.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/Bootstrap/css/estilos.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/Bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="<%=request.getContextPath()%>/js/jquery-2.1.1.min.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.dataTables.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/table.js"></script>
	<script src="<%=request.getContextPath()%>/js/plancurricular.js"></script>
	 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
	<style>
	
	
	
@-webkit-keyframes 
click-wave { 0% {
 width: 40px;
 height: 40px;
 opacity: 0.35;
 position: relative;
}
 100% {
 width: 200px;
 height: 200px;
 margin-left: -80px;
 margin-top: -80px;
 opacity: 0.0;
}
}
@-moz-keyframes 
click-wave { 0% {
 width: 40px;
 height: 40px;
 opacity: 0.35;
 position: relative;
}
 100% {
 width: 200px;
 height: 200px;
 margin-left: -80px;
 margin-top: -80px;
 opacity: 0.0;
}
}
@-o-keyframes 
click-wave { 0% {
 width: 40px;
 height: 40px;
 opacity: 0.35;
 position: relative;
}
 100% {
 width: 200px;
 height: 200px;
 margin-left: -80px;
 margin-top: -80px;
 opacity: 0.0;
}
}
@keyframes 
click-wave { 0% {
 width: 40px;
 height: 40px;
 opacity: 0.35;
 position: relative;
}
 100% {
 width: 200px;
 height: 200px;
 margin-left: -80px;
 margin-top: -80px;
 opacity: 0.0;
}
}

.option-input {
  -webkit-appearance: none;
  -moz-appearance: none;
  -ms-appearance: none;
  -o-appearance: none;
  appearance: none;
  position: relative;
  top: 13.33333px;
  width: 40px;
  height: 40px;
  -webkit-transition: all 0.15s ease-out 0;
  -moz-transition: all 0.15s ease-out 0;
  transition: all 0.15s ease-out 0;
  background: #cbd1d8;
  border: none;
  color: #fff;
  cursor: pointer;
  display: inline-block;
  outline: none;
  position: relative;
  margin-right: 0.5rem;
  z-index: 1000;
}

.option-input:hover { background: #9faab7; }

.option-input:checked { background: #40e0d0; }

.option-input:checked::before {
  width: 40px;
  height: 40px;
  position: absolute;
  content: '\2716';
  display: inline-block;
  font-size: 26.66667px;
  text-align: center;
  line-height: 40px;
}

.option-input:checked::after {
  -webkit-animation: click-wave 0.65s;
  -moz-animation: click-wave 0.65s;
  animation: click-wave 0.65s;
  background: #40e0d0;
  content: '';
  display: block;
  position: relative;
  z-index: 100;
}

.option-input.radio { border-radius: 50%; }

.option-input.radio::after { border-radius: 50%; }



body .demo { padding: 5rem; display:block; }

body label {
  display: block;
  line-height: 40px;
}
	
		* Small devices (tablets, 768px and up) */
@media (min-width: @screen-sm-min) { 
	.col-xs-12{
		padding:5px;
		margin:5px;
		
	}
}



</style>
</head>
<body style="background-image: url('images/02.png');background-repeat: no-repeat; background-position: center; background-position: right;">
    <div> 
        <jsp:include page="cabecera.jsp" flush="true"/>
        <div class="row" style="text-align:right;padding:15px;">
        	<div class="col-md-12 ">
        		<p>Usuario Director</p>
        	</div>
        </div>
        <div class="container-fluid">
		<div class="dimencion">
			<h1>Plan Curricular - Crear</h1>
		</div>
		<div>
	    	<div class="text-center selec col-lg-5 col-xs-10">
		      <select id="escuela" class="form-control" name="escuelas" >
		        
		      </select>
		    </div>  
		    <div class="clearfix"></div>			
		</div>
		<div class="container-fluid borde_1">
			<div class="col-lg-5 col-xs-8">
				<input type="text" class="form-control" placeholder="Ingrese el nombre del Plan Curricular">
			</div>
			<div class="col-lg-7 col-xs-4 text-right">
				<button type="button" class="btn btn-danger">Limpiar</button>
			</div>
		</div>	
		<input type="text" id="idescuelaplan" value="<%=request.getAttribute("idescuela")%>">
		<div class="container-fluid borde_1 panel panel-danger">
		    <div class="col-lg-5 col-xs-12 center-block">
		    	<div class="text-center selec">
			      <select onchange="cargarPlanporciclo()" class="form-control" name="ciclo" id="infociclo">
			        
			        <option value="0">Seleccion un ciclo</option>
			        <option value="1">Cliclo I</option>
			        <option value="2">Cliclo II</option>
			        <option value="3">Cliclo III</option>
			        <option value="4">Cliclo IV</option>
			        <option value="5">Cliclo V</option>
			        <option value="6">Cliclo VI</option>
			        <option value="7">Cliclo VII</option>
			        <option value="8">Cliclo VIII</option>
			        <option value="9">Cliclo IX</option>
			        <option value="10">Cliclo X</option>
			      </select>
			    </div>  
			    <div class="infor" id="infociclo">
			        <div class="col-lg-6 col-xs-6">
			        	<span class="label label-primary">Cliclo : I</span>
			        </div>
			        <div class="col-lg-6 col-xs-6 text-right">
			        	<span class="label label-primary">Creditos : 23</span>
			        </div>
			        <div class="clearfix"></div>
			    </div>
			    <div id="nuevoplan" style="width:690px;height:400px;overflow:scroll;"class="borde_2 row " align="center">
			    	
			    </div>
		    </div>
			<div class="col-lg-2 col-xs-12">
				<div class="col-lg-12 text-center separar"><button type="button" class="btn btn-success" onclick="moverIzquierda();"><span class="glyphicon glyphicon-chevron-left"></span> </button></div>
				<div class="col-lg-12 text-center"><button type="button" class="btn btn-danger" onclick="moverDerecha();"><span class="glyphicon glyphicon-chevron-right"></span> </button></div>	
			</div>
		    <div class="col-lg-5 col-xs-12 center-block">
		      <div class="input-group buscar">
		        <input type="text" class="form-control">
		        <span class="input-group-btn">
		          <button class="btn btn-default" type="button">Buscar</button>
		        </span>
		      </div>
		      <div class="infor">
		      </div>
		      <div id="listadodecursos" style="width:690px;height:400px;overflow:scroll;"class="borde_2 row " align="center">
		      	
		      
			      	
			   
		      </div>
		    </div>
		</div>	
		<div class="container-fluid">
			<div class="col-lg-6">
				<textarea class="form-control" id="exampleTextarea" rows="3" placeholder="Ingrese su Descripción."></textarea>
			</div>
			<div class="col-lg-4">
				
			</div>	
			<div class="col-lg-2">
				<h4><span class="glyphicon glyphicon-tint amarillo"></span> Datos del Curso</h4>
				<div><p><span class="glyphicon glyphicon-stop verde"></span> Completo</p></div>
				<div><p><span class="glyphicon glyphicon-stop rojo"></span> Vacio</p></div>
			</div>	
		</div>
		<div class="row">
			<div class="col-lg-6 col-xs-6 text-right"><button type="button" class="btn btn-success"><span class="glyphicon glyphicon-plane"></span> Guardar</button></div>
			<div class="col-lg-6 col-xs-6"><button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Cancelar</button></div>
		</div>
	</div>
	<!-- Button trigger modal -->
<button type="button" onclick="recorrer()">
  testeaor 
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Completar curso de <label id="nomcurso"></label> </h4>
      </div>
      <div class="modal-body row">
      	<div class="col-md-4" >Tipos Cursos - FIA</div>
      	<div class="col-md-4"><input type="radio" id="tFia1" name="tFia" value="Electivo">Electivo</div>
      	<div class="col-md-4"><input type="radio" id="tFia2" name="tFia" value="Obligatorio">Obligatorio</div>
      	<br/><br/>
      	<div class="col-md-4">Tipos Cursos - Sunedu</div>
      	<div class="col-md-4"><input type="radio" id="tSunedu1" name="tSunedu" value="General">General</div>
      	<div class="col-md-4"><input type="radio" id="tSunedu2" name="tSunedu" value="Transversal">Transversal</div>
        <br/><br/>
       	<div class="col-md-4">Modo Curso</div>
       	<div class="col-md-4"><input type="radio" id="modoCurso1" name="modoCurso" value="Presencial">Presencial</div>
      	<div class="col-md-4"><input type="radio" id="modoCurso2" name="modoCurso" value="Virtual">Virtual</div>
        <br/><br/>
      	<div class="col-md-6">Categoría</div>
      	<div class="col-md-6">
      	<select  class="form form-control"  id="categoria" name="categoria" style="max-width: 400px;">
			<option value="0">Seleccione</option>
			<option value="Matemáticas y Ciencias">Matemáticas y Ciencias</option>
			<option value="Métodos cuantitativos">Métodos cuantitativos</option>
			<option value="Humanidades">Humanidades</option>
			<option value="Gestión">Gestión</option>
			<option value="Sistemas de Información">Sistemas de Información</option>
			<option value="Ciencias de la Computación">Ciencias de la Computación</option>
			<option value="Tecnología de Información">Tecnología de Información</option>
			<option value="Ingeniería de Software">Ingeniería de Software</option>
		</select>
      	</div>
      </div>
      <input type="hidden" id="codagr">
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="crearcursoplan()">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>
        
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="<%=request.getContextPath()%>/Bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/Bootstrap/js/ie10-viewport-bug-workaround.js"></script>
        <script src="<%=request.getContextPath()%>/js/ModalAdministradores.js"></script>
   
   
    </div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	   
	var accion = "cursosplan";
	
	$.post('<%=request.getContextPath() %>/mantenerCurso',{
		accion:accion
		
	},function(response){
		
		var conta="";
		for( var i=0;i<response['object'].length;i++){																																																										//button																																																							//RADIO BUTTON			
		conta+='<div id="cursos'+response['object'][i]['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['idcurso']+'">'+response['object'][i]['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['idcurso']+'" ></div>';
		
		}
		
		$('#listadodecursos').html(conta);
		
			
	});
	
	
	
	accion="listarEscuelas";
	$.get('<%=request.getContextPath()%>/gestionarPlan',{
		accion:accion
		
	},function(response){
		
		var conta="";
		var seleccion='<option value="0">Seleccione..</option>';
		for( var i=0;i<response['object'].length;i++){
		conta+='<option value='+response['object'][i]['idescuela']+'>'+response['object'][i]['descripcion']+'</optiion>';
			
		}
		
		$('#escuela').html(seleccion+conta);
		
			
		});
	});
	
	
	function cargarPlanporciclo(){
		var infociclo=$("#infociclo").val();
		
		var idEscuelaPlanDet=$("#idescuelaplan").val();
		accion="cargarplanescuela";
		$.post('<%=request.getContextPath() %>/gestionarPlan',{
			accion:accion,
			idEscuelaPlanDet:idEscuelaPlanDet
			
		},function(response){
			var ciclo1="";
			var ciclo2="";
			var ciclo3="";
			var ciclo4="";
			var ciclo5="";
			var ciclo6="";
			var ciclo7="";
			var ciclo8="";
			var ciclo9="";
			var ciclo10="";
			
			for( var i=0;i<response['object'].length;i++){
				
				if(response['object'][i]['ciclo']=='1'){
					ciclo1+='<div id="cursos'+response['object'][i]['accesoCurso']['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['accesoCurso']['idcurso']+'">'+response['object'][i]['accesoCurso']['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['accesoCurso']['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['accesoCurso']['idcurso']+'" ></div>';
				}
				
				if(response['object'][i]['ciclo']=='2'){
					ciclo2+='<div id="cursos'+response['object'][i]['accesoCurso']['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['accesoCurso']['idcurso']+'">'+response['object'][i]['accesoCurso']['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['accesoCurso']['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['accesoCurso']['idcurso']+'" ></div>';
				}
				
				if(response['object'][i]['ciclo']=='3'){
					ciclo3+='<div id="cursos'+response['object'][i]['accesoCurso']['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['accesoCurso']['idcurso']+'">'+response['object'][i]['accesoCurso']['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['accesoCurso']['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['accesoCurso']['idcurso']+'" ></div>';
				}
					
				if(response['object'][i]['ciclo']=='4'){
					ciclo4+='<div id="cursos'+response['object'][i]['accesoCurso']['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['accesoCurso']['idcurso']+'">'+response['object'][i]['accesoCurso']['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['accesoCurso']['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['accesoCurso']['idcurso']+'" ></div>';
				}
				if(response['object'][i]['ciclo']=='5'){
					ciclo5+='<div id="cursos'+response['object'][i]['accesoCurso']['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['accesoCurso']['idcurso']+'">'+response['object'][i]['accesoCurso']['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['accesoCurso']['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['accesoCurso']['idcurso']+'" ></div>';
				}
				
				if(response['object'][i]['ciclo']=='6'){
					ciclo6+='<div id="cursos'+response['object'][i]['accesoCurso']['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['accesoCurso']['idcurso']+'">'+response['object'][i]['accesoCurso']['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['accesoCurso']['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['accesoCurso']['idcurso']+'" ></div>';
				}
				
				if(response['object'][i]['ciclo']=='7'){
					ciclo7+='<div id="cursos'+response['object'][i]['accesoCurso']['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['accesoCurso']['idcurso']+'">'+response['object'][i]['accesoCurso']['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['accesoCurso']['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['accesoCurso']['idcurso']+'" ></div>';
				}
					
				if(response['object'][i]['ciclo']=='8'){
					ciclo8+='<div id="cursos'+response['object'][i]['accesoCurso']['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['accesoCurso']['idcurso']+'">'+response['object'][i]['accesoCurso']['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['accesoCurso']['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['accesoCurso']['idcurso']+'" ></div>';
				}
				
				if(response['object'][i]['ciclo']=='9'){
					ciclo9+='<div id="cursos'+response['object'][i]['accesoCurso']['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['accesoCurso']['idcurso']+'">'+response['object'][i]['accesoCurso']['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['accesoCurso']['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['accesoCurso']['idcurso']+'" ></div>';
				}
					
				if(response['object'][i]['ciclo']=='10'){
					ciclo10+='<div id="cursos'+response['object'][i]['accesoCurso']['idcurso']+'" class="curso col-md-6" style="text-align:center;width:160px; height:180px;;" ><strong><label value="asds" id="nombrecurso'+response['object'][i]['accesoCurso']['idcurso']+'">'+response['object'][i]['accesoCurso']['nombre']+'</label></strong><br/><button onclick="completarcurso('+response['object'][i]['accesoCurso']['idcurso']+')"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit"  title="Editar"></span></button><br/><input type="radio" class="option-input radio" name="selectcurso" id="selectcurso" value="'+response['object'][i]['accesoCurso']['idcurso']+'" ></div>';
				}
				
				
				
			
			}
			
			if(infociclo!=0){
					if(infociclo=='1'){
						$('#nuevoplan').html(ciclo1);
					}
					
					if(infociclo=='2'){
						$('#nuevoplan').html(ciclo2);					
					}
								
					if(infociclo=='3'){
						$('#nuevoplan').html(ciclo3);
					}
					
					if(infociclo=='4'){
						$('#nuevoplan').html(ciclo4);
					}
					
					if(infociclo=='5'){
						$('#nuevoplan').html(ciclo5);
					}
					
					if(infociclo=='6'){
						$('#nuevoplan').html(ciclo6);
					}
					
					if(infociclo=='7'){
						$('#nuevoplan').html(ciclo7);
					}
					
					if(infociclo=='8'){
						$('#nuevoplan').html(ciclo8);
					}
					
					if(infociclo=='9'){
						$('#nuevoplan').html(ciclo9);
					}
					
					if(infociclo=='10'){
						$('#nuevoplan').html(ciclo10);
					}


			
			}else{
				$('#nuevoplan').html("Debe seleccionar un ciclo.");
			}
			
			});
		
	}
	
	function probar(){
		alert("sadasd");
	}
	
	function moverIzquierda(){
	var id=$('input:radio[name=selectcurso]:checked').val();
		if($('#listadodecursos').find("#cursos"+id)){
			$("#cursos"+id).appendTo('#nuevoplan');
		}
	}
	function moverDerecha(){
		var id=$('input:radio[name=selectcurso]:checked').val();
		if($('#nuevoplan').find("#cursos"+id)){
			$("#cursos"+id).appendTo('#listadodecursos');
		}
	}
	
	
	function recorrer(){
			  $( "#nuevoplan >#selectcurso" ).each(function() {
			    alert($( this ).val());
			  });
		
	}
		
	
	
	function completarcurso(id){
		
		document.getElementById('tFia1').checked = false;
		document.getElementById('tSunedu1').checked = false;
		document.getElementById('modoCurso1').checked = false;
		document.getElementById('tFia2').checked = false;
		document.getElementById('tSunedu2').checked = false;
		document.getElementById('modoCurso2').checked = false;
		document.getElementById('codagr').value="";
		
		$('#categoria').val("0");
		
		var nombreCurso=$("#nombrecurso0"+id).text();
		$('#nomcurso').text(nombreCurso+" --  Código: 0"+id);
		$('#codagr').val("0"+id);
	}
	
	function crearcursoplan(){
		var codigo=$('#codagr').val();
		var tFia=$('input:radio[name=tFia]:checked').val();
		var tSunedu=$('input:radio[name=tSunedu]:checked').val();
		var modoCurso=$('input:radio[name=modoCurso]:checked').val();
		var categoria=$('#categoria').val();
		if(tFia==null || tSunedu==null || modoCurso==null || categoria=='0'){
			alert("error faltan completar campos");
		}else{
			
			alert("Todo bien , codigo es "+codigo+"  categoria "+categoria);
			accion="crearcursoplan";
			$.post('<%=request.getContextPath() %>/gestionarPlan',{
				accion:accion,
				codigo:codigo,
				tFia:tFia,
				tSunedu:tSunedu,
				modoCurso:modoCurso,
				categoria:categoria
				
			},function(response){
				
				
					
				});	
		
		}
		
	}
</script>
</html>

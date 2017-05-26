
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
	<script src="<%=request.getContextPath()%>/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.dataTables.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/table.js"></script>
	<style>
		* Small devices (tablets, 768px and up) */
@media (min-width: @screen-sm-min) { 
	.col-xs-12{
		width: 100%;
	}
}
</style>
</head>
<body style="background-image: url('images/02.png');background-repeat: no-repeat; background-position: center; background-position: right;">
    <div> 
        <jsp:include page="cabecera.jsp" flush="true"/>
        <div class="row" style="text-align:right;padding:15px;">
        	<div class="col-md-12 ">
        		<p>Usuario Administrador</p>
        	</div>
        </div>
        <div class="container-fluid">
        <form name="crearsemestre" action="<%=request.getContextPath()%>/gestionarPlan"  method="post">
    	<input name="accion" type="hidden" value="crearsemestre">
    		<div class="row" align="center" style="padding:15px;">
    			<div class="col-md-12 col-xs-12" style="padding:10px;">
    			<h1>Crear Periodo Académico</h1>
    			</div>
    		
    		
    				
    			<div class="col-md-12 col-xs-12" > 
    					<label>Código semestre : </label> <input readonly="readonly" name="codigosemestre" id="codigosemestre" class="form form-control" type="text"  style="max-width: 400px;">
    			</div>
    			<div class="col-md-12 col-xs-12" > 
    					<label>Año : </label> <input readonly="readonly" id="ano" name="ano" class="form form-control" type="text"  style="max-width: 400px;">
    			</div>
    			<div class="col-md-12 col-xs-12" > 
    					<label>Periodo : </label> <input readonly="readonly" name="periodo" id="periodo" class="form form-control" type="text"  style="max-width: 400px;">
    			</div>
    			<div class="col-md-12 col-xs-12" > 
					<label for="Descripcion">Cantidad de Semanas</label>
					<input readonly="readonly" name="cantidadsemanas" id="cantidadsemanas" class="form form-control" type="text"  style="max-width: 400px;">
    			</div>
    		</div> 
    		
    		<div class="row" align="center" style="padding:15px;">
    			<div class="col-md-6 col-xs-12"  style="padding:15px;"> 
    					<input class="btn btn-warning" type="button" value="Cancelar" style="max-width: 200px;">
    			</div>
    			<div class="col-md-6 col-xs-12" style="padding:15px;"> 
    					<input class="btn btn-succes" onclick="return pregunta()" type="button"  value="Guardar" style="max-width: 200px;">
    			</div>
    		</div>
    		
    		</form>
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
$(document).ready(function(){
	 var accion='ultimosemestre';
	 
	  $.get('../gestionarPlan', {
		  
				accion : accion
			}, function(response) {	
				
				var idsemestre=response['object']['idSemestre'];
				var ano=response['object']['ano'];
				var periodo=response['object']['semestre'];
				var qSemanas=16; //response['object']['cantidadSemanas'];
				
				if(periodo==2){
					ano=ano+1;
					qSemanas=4;
					periodo=0;
					alert("primer if");
				}else if(periodo==0){
					periodo=1;
					alert("segundo if");
				}else if(periodo==1){
					periodo=2;
					alert("tercer if");
				}
				idsemestre++;
				
				document.getElementById("codigosemestre").setAttribute('value',idsemestre);
				document.getElementById("ano").setAttribute('value',ano);
				document.getElementById("periodo").setAttribute('value',periodo);
				document.getElementById("cantidadsemanas").setAttribute('value',qSemanas);
				 
	  });   
	           
}); 

function pregunta(){ 

if($("#codigosemestre").val()!=""){	
		if (confirm('¿Estas seguro de crear el nuevo semestre ?')){ 
	       document.crearsemestre.submit() ;
	       return true;
	    } else{
	    	return false;
	    }
	}else{
		alert("Usted ya creo un semestre. Intente luego.")
		return false;
	}
} 


</script>
</html>

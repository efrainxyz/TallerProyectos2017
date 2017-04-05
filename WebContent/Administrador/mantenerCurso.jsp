
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
		padding:5px;
		margin:5px;
		
	}
}
</style>
<script type="text/javascript">

	function estado(){
		var estado=$( "#estado" ).val();
		
		if(estado="Bloqueado"){
		$( "#estado" ).removeClass( "btn btn-danger" ).addClass( "btn btn-success" );
		$( "#estado" ).val("Activo");
		}else if(estado="Activo"){
			$( "#estado" ).removeClass( "btn btn-success" ).addClass( "btn btn-danger" );
			$( "#estado" ).val("Activo");
		}
		
		alert(estado);
		estado="";
		
	}
</script>
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
        	<div class="row">
        		<div class="col-md-12" > 
	        		<fieldset>
						    <legend>Listado de Cursos</legend>

						    
					</fieldset>
				</div>
				<div class="col-md-12" style="padding:15px;margin:15px;" align="center"> 
					<button  onclick='location.href="<%=request.getContextPath()%>/Administrador/crearCurso.jsp";'  type="button" class="btn btn-primary" style="width:200px;height:50px; ">N</button><br/>Nuevo Curso
				</div>
				<div class="cold-md-12" style="padding:15px;margin:15px">
					 <table id="tabla" class="table table-striped">
					    <thead>
					      <tr>
					        <th>Codigo</th>
					        <th>Crédito</th>
					        <th>Nombre del Curso</th>
					        <th>Fecha Generada</th>
					        <th>Responsable</th>
					        <th>Estado</th>
					        <th>Copiar</th>
					        <th>Editar</th>
					      </tr>
					    </thead>
					    <tbody>
					      <tr>
					        <td>00020171</td>
					        <td>5</td>
					        <td>USMP-FIA-MATE-DISCRETA</td>
					        <td>07/03/2017</td>
					        <td>Director de Escuela</td>
					        <td><input type="button" onclick="estado()" id="estado" type="button" class="btn btn-danger" value="Bloqueado"></td>
					        <td><button type="button" class="btn btn-primary" >Copiar</button></td>
					        <td><button type="button" class="btn btn-danger">X</button></td>
					      </tr>
					      <tr>
					        <td>00020172</td>
					        <td>5</td>
					        <td>USMP-FIA-ECONOMIA</td>
					        <td>07/03/2017</td>
					        <td>Director de Escuela</td>
					       <td><button type="button" class="btn btn-success" style="width: 94px;">Activo</button></td>
					        <td><button type="button" class="btn btn-primary" >Copiar</button></td>
					        <td><button type="button" class="btn btn-danger">X</button></td>
					      </tr>
					      <tr>
					        <td>00020173</td>
					        <td>5</td>
					        <td>USMP-FIA-GEO-ANALITICA</td>
					        <td>07/03/2017</td>
					        <td>Director de Escuela</td>
					      	<td><button type="button" class="btn btn-success" style="width: 94px;">Activo</button></td>
					        <td><button type="button" class="btn btn-primary" >Copiar</button></td>
					        <td><button type="button" class="btn btn-danger">X</button></td>
					      </tr>
					      <tr>
					        <td>00020173</td>
					        <td>5</td>
					        <td>USMP-FIA-GEO-ANALITICA</td>
					        <td>07/03/2017</td>
					        <td>Director de Escuela</td>
					        <td><button type="button" class="btn btn-success" style="width: 94px;">Activo</button></td>
					        <td><button type="button" class="btn btn-primary" >Copiar</button></td>
					        <td><button type="button" class="btn btn-danger">X</button></td>
					      </tr>
					      <tr>
					        <td>00020173</td>
					        <td>5</td>
					        <td>USMP-FIA-GEO-ANALITICA</td>
					        <td>07/03/2017</td>
					        <td>Director de Escuela</td>
					        <td><button type="button" class="btn btn-danger">Bloqueado</button></td>
					        <td><button type="button" class="btn btn-primary" >Copiar</button></td>
					        <td><button type="button" class="btn btn-danger">X</button></td>
					      </tr>
					      
					      
					    </tbody>
					  </table>
				
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
</html>

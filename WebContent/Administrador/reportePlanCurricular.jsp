
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
	.tam, .col-xs-12{
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
    		<div class="row" align="center">
    			<div class="col-md-6 col-xs-12" style="padding:10px 5px;">
    				<select class="form form-control" style="max-width: 400px;padding:0;margin:0;">
    						<option>Ingeniera de Computación y Sistemas</option>
						    <option>Ingeniera Civil</option>
						    <option>Ingeniera Alimentarias</option>
						    <option>Ingeniera Electrónica</option>
						    <option>Ingeniera Industrial</option>
						    
   					</select>
    			</div>
    			<div class="col-md-6 col-xs-12" style="padding:10px 5px;">
    				<select class="form form-control" style="max-width: 400px;padding:0;margin:0;">
    						<option>Semestre  2017 - 1</option>
    						<option>Semestre  2016 - 2</option>
    						<option>Semestre  2016 - 1</option>
    						<option>Semestre  2015 - 2</option>
    						<option>Semestre  2015 - 1</option>
    						<option>Semestre  2014 - 2</option>
						    
   					</select>
    			</div>
    		</div>
    		<center>
    			<h1>Reportes</h1>
    		</center>
    		<div class="row" align="center" style="padding:15px;" >
    			<div class="col-md-12 col-xs-12" align="center" style="padding:10px 5px;"> 
    				<button onclick='location.href="<%=request.getContextPath()%>/images/sunedu.jpg";' type="button" style="max-width:400px; " class="btn btn-success  tam btn-lg btn-block">Reporte Sunedu C2</button>
    			</div>
    			<div class="col-md-12 col-xs-12" align="center" style="padding:10px 5px;"> 
    				<button onclick='location.href="<%=request.getContextPath()%>/images/plan-estudio.PNG";' type="button"  style="max-width:400px; " class="btn btn-success tam btn-lg btn-block">Reporte Plan de Estudio</button>
    			</div>
    			<div class="col-md-12 col-xs-12" align="center" style="padding:10px 5px;"> 
    				<button onclick='alert("En mantenimiento..")' type="button"  style="max-width:400px; " class="btn btn-success  tam btn-lg btn-block">Reporte Plan de Estudio POR Horas</button>
    			</div>
    			<div class="col-md-12 col-xs-12" align="center" style="padding:10px 5px;"> 
    				<button onclick='alert("En mantenimiento..")' type="button" style="max-width:400px; " class="btn btn-success  tam btn-lg btn-block">Reporte Resumen Curricular</button>
    			</div>
    			<div class="col-md-12 col-xs-12" align="center" style="padding:10px 5px;"> 
    				<button  onclick='location.href="<%=request.getContextPath()%>/images/maya-curricular.jpg";' type="button" style="max-width:400px; "  class="btn btn-success tam btn-lg btn-block">Malla Curricular</button>
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

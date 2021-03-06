
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
		div.click:hover{
   background-color:#8A0808;
   color:white;
   font-size:25px;
}
</style>
</head>
<body style="background-image: url('images/02.png');background-repeat: no-repeat; background-position: center; background-position: right;">
    <div> 
        <jsp:include page="cabecera.jsp" flush="true"/>
        <div class="container-fluid">
    		<div class="row center-block">
    			<div  onclick='location.href="<%=request.getContextPath()%>/mantenerCurso?accion=listar";' class=" col-md-4 col-sm-4 col-xs-12" style="padding:30px;margin:30px auto;height:200px;text-align:center;vertical-align:middle; ">
    				<div  class="click" style="border:2px solid black;width:auto;height: 200px;font-size:20px;">Mantener Curso</div>
    			</div>
    			<div  onclick='location.href="<%=request.getContextPath()%>/Administrador/reportePlanCurricular.jsp";' class=" col-md-4 col-sm-4 col-xs-12" style="padding:30px;margin:30px auto;height:200px;text-align:center;vertical-align:middle; ">
    				<div  class="click" style="border:2px solid black;width:auto;height: 200px;font-size:20px;">Generar Reporte Plan Curricular</div>
    			</div>
    			<div  onclick='location.href="<%=request.getContextPath()%>/Administrador/administrarSemestre.jsp";' class=" col-md-4 col-sm-4 col-xs-12" style="padding:30px;margin:30px auto;height:200px;text-align:center;vertical-align:middle; ">
    				<div  class="click" style="border:2px solid black;width:auto;height: 200px;font-size:20px;">Adminisrar Semestre</div>
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

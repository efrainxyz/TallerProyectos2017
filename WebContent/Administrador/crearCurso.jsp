
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width" />
<link rel="icon" href="<%=request.getContextPath()%>/images/bcp.ico">
<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/Bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/Bootstrap/css/dashboard.css"
	rel="stylesheet">
<script
	src="<%=request.getContextPath()%>/Bootstrap/js/ie-emulation-modes-warning.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/styles.css" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jquery.dataTables.css">
<script src="<%=request.getContextPath()%>/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.dataTables.min.js"></script>
<script src="<%=request.getContextPath()%>/js/table.js"></script>
<style>
*
 
Small
 
devices
 
(
tablets
,
768
px
 
and
 
up
)
 
*
/


@media ( min-width : @screen-sm-min) {
	.col-xs-12 {
		width: 100%;
	}
}
</style>
</head>
<body
	style="background-image: url('images/02.png'); background-repeat: no-repeat; background-position: center; background-position: right;">
	<div>
		<jsp:include page="cabecera.jsp" flush="true" />
		<div class="row" style="text-align: right; padding: 15px;">
			<div class="col-md-12 ">
				<p>Usuario Administrador</p>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row" align="center" style="padding: 15px;">
				<div class="col-md-12 col-xd-12">
					<h1>Crear Nuevo Curso</h1>
				</div>
			</div>
			<div class="row" align="center" style="padding: 15px;">
				<div class="col-md-12 col-xs-12">
					<input class="form form-control" type="text"
						placeholder="Nombre del Curso" style="max-width: 400px;">
				</div>
			</div>
			<div class="row" align="center" style="padding: 15px;">
				<div class="col-md-12 col-xs-12">
					<select class="form form-control" style="max-width: 400px;">
						<option>Horas Teoria</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
			</div>
			<div class="row" align="center" style="padding: 15px;">
				<div class="col-md-12 col-xs-12" style="padding:10px 0;">
					<select class="form form-control" style="max-width: 400px;">
						<option>Horas Prácticas</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
				<div class="col-md-12 col-xs-12" style="padding:10px 0;">
					<select class="form form-control" style="max-width: 400px;">
						<option>Horas Horas de Teoría</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
				<div class="col-md-12 col-xs-12" style="padding:10px 0;">
					<select class="form form-control" style="max-width: 400px;">
						<option>Horas de Laboratorio</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
			</div>
		
			<div class="row" align="center" style="padding: 15px;">

				<div class="col-md-12 col-xs-12">
					<input class="form form-control" type="text"
						placeholder="Cursos Requisitos" style="max-width: 400px;">
				</div>
			</div>
			<div class="row" align="center" style="padding: 15px;">
				<div class="col-md-12 col-xs-12">
					<input class="form form-control" type="text"
						style="max-width: 400px;">
				</div>
			</div>
			<div class="row" align="center" style="padding: 15px;">
				<div class="col-md-6 col-xs-12" style="padding: 15px;">
					<input class="btn btn-warning" type="button" value="Cancelar"
						style="max-width: 200px;">
				</div>
				<div class="col-md-6 col-xs-12" style="padding: 15px;">
					<input class="btn btn-succes" type="button" value="Guardar"
						style="max-width: 200px;">
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script
			src="<%=request.getContextPath()%>/Bootstrap/js/bootstrap.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/Bootstrap/js/ie10-viewport-bug-workaround.js"></script>
		<script src="<%=request.getContextPath()%>/js/ModalAdministradores.js"></script>
	</div>
</body>
</html>

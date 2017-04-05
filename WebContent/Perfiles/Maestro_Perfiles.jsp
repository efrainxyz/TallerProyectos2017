
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maestro de Perfiles</title>
	<!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
	<body>
		<!-- start: MAIN CONTAINER -->
		<div class="main-container">
			<div class="navbar-content">
				<!-- start: SIDEBAR -->
				<div class="main-navigation navbar-collapse collapse">
					<!-- start: MAIN MENU TOGGLER BUTTON -->
					<div class="navigation-toggler">
						<i class="clip-chevron-left"></i>
						<i class="clip-chevron-right"></i>
					</div>
					<!-- end: MAIN MENU TOGGLER BUTTON -->
				
				</div>
				<!-- end: SIDEBAR -->
			</div>
			<!-- start: PAGE -->
			<div class="main-content">
				<div class="container">
					<!-- start: PAGE HEADER -->
					<div class="row">
						<div class="col-sm-12">
							<!-- start: PAGE TITLE & BREADCRUMB -->
					
							<div class="page-header">
								<h1>Perfil <small> y Accesos </small></h1>
							</div>
							<!-- end: PAGE TITLE & BREADCRUMB -->
						</div>
					</div>
					<!-- end: PAGE HEADER -->
					<!-- start: PAGE CONTENT -->
					<div class="row">
						<div class="col-md-12">
							<!-- start: BASIC TABLE PANEL -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<i class="fa fa-external-link-square"></i>
									Agregar un nuevo Perfil
									<div class="panel-tools">&nbsp;</div>
								</div>
								
								<div class="panel-body">
									<form role="form" class="form-horizontal" method="post">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-nombre">
												Nombre
											</label>
											<div class="col-sm-9">
												<input type="text" placeholder="" id="form-field-nombre" class="form-control" name="nombre">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-slug">
												Permisos
											</label>
											
										</div>
										<div class="form-group">
										   <div  class ="col-sm-4" style = "margin-left:20%;">
												<div class="checkbox ">
												  <label><input type="checkbox" value="">Maestro de Docentes</label>
												</div>
												<div class="checkbox ">
												  <label><input type="checkbox" value="">Maestro de Aulas</label>
												</div>
												<div class="checkbox ">
												  <label><input type="checkbox" value="" >Asignar Curso a Docente</label>
												</div>
												<div class="checkbox ">
												  <label><input type="checkbox" value="" >Consultar Curricula</label>
												</div>
												<div class="checkbox ">
												  <label><input type="checkbox" value="" >Información Docente</label>
												</div>
												<div class="checkbox ">
												  <label><input type="checkbox" value="" >Disponibilidad Docente</label>
												</div>
												<div class="checkbox ">
												  <label><input type="checkbox" value="" >Generar Propuesta de Horarios</label>
												</div>
												<div class="checkbox ">
												  <label><input type="checkbox" value="" >Información de Referido</label>
												</div>
												<div class="checkbox ">
												  <label><input type="checkbox" value="" >Disponibilidad de Referido</label>
												</div>
												<div class="checkbox ">
												  <label><input type="checkbox" value="" >Maestro Perfil Usuario</label>
												</div>
											</div>	
										</div><!-- /.row -->		
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-description">
												Descripción
											</label>
											<div class="col-sm-9">
												<input type="text" placeholder="" id="form-field-description" class="form-control" name="descripcion">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-4" style="float: right;">
												<button class="btn btn-teal btn-primary"  type="submit">
													Agregar <i class="fa fa-save"></i>
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- end: BASIC TABLE PANEL -->
						</div>
					</div>
					
					<!-- end: PAGE CONTENT-->
				</div>
			</div>
			<div class="main-content">
				<div class="container">
					<!-- start: PAGE HEADER -->
					<div class="row">
						<div class="col-sm-12">
							<!-- end: PAGE TITLE & BREADCRUMB -->
						</div>
					</div>
					<!-- end: PAGE HEADER -->
					<!-- start: PAGE CONTENT -->
					<div class="row">
						<div class="col-md-12">
							<!-- start: BASIC TABLE PANEL -->
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="panel-body">
									<table class="table table-hover" id="sample-table-1">
										<thead>
											<tr>
												<th>Nombre</th>
												<th>Perfil</th>
												<th>Permisos</th>
												<th></th>
												<th>Opciones</th>
											</tr>
										</thead>
										<tbody>									
											<tr>
											    <td>Administrador</td>
											    <td>Admin</td>
											    <td>Maestro Docentes, Maestro Aulas, Consultar Currícula, Maestro de Perfiles/Usuarios</td>
												<td class=""></td>
												<td class="center">
													<div class="visible-md visible-lg hidden-sm hidden-xs">
														<button name="btn_eliminar" id="btn_eliminar" type="button" class="btn btn-default">
    														<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
    														Eliminar
    													</button>
    													<button name="btn_editar" id="btn_editar" type="button" class="btn btn-default">
    														<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
    														Editar
    													</button>
														
													</div>
												</td>
											</tr>
											<tr>
											    <td>Coordinador de Escuela</td>
											    <td>cooresc</td>
											    <td>Maestro Docentes, Maestro Aulas, Consultar Currícula</td>
												<td class=""></td>
												<td class="center">
													<div class="visible-md visible-lg hidden-sm hidden-xs">
														<button name="btn_eliminar" id="btn_eliminar" type="button" class="btn btn-default">
    														<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
    														Eliminar
    													</button>
    													<button name="btn_editar" id="btn_editar" type="button" class="btn btn-default">
    														<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
    														Editar
    													</button>
														
													</div>
													
												</td>
											</tr>
										</tbody>
									</table>
									
								</div>
								</div>
							</div>
							<!-- end: BASIC TABLE PANEL -->
						</div>
					</div>
					
					<!-- end: PAGE CONTENT-->
				</div>
			</div>
			
			<div class="visible-md visible-lg hidden-sm hidden-xs" style="margin-left:77%;">
				<button name="btn_guardar" id="btn_guardar" type="button" class="btn btn-primary">
    				<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>
    				Guardar
    				</button>
    			<button name="btn_cancelar" id="btn_cancelar" type="button" class="btn btn-default">
    				<span class="glyphicon glyphicon-cancel" aria-hidden="true"></span>
    				Cancelar
    			</button>														
			</div>
			
			<!-- end: PAGE -->
		</div>
		<!-- end: MAIN CONTAINER -->

	</body>
</html>
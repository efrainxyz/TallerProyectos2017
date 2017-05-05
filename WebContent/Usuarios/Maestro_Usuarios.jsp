
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maestro de Usuarios</title>
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
								<h1>Usuario</h1>
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
									Agregar un nuevo usuario
									<div class="panel-tools">&nbsp;</div>
								</div>
								<div class="panel-body">
									<form role="form" id="form-add-user" class="form-horizontal" method="post" novalidate="novalidate" action="">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-user">
												Usuario
											</label>
											<div class="col-sm-8">
												<input type="text" id="form-field-user" class="form-control" name="user" minlength="6" maxlength="20" required>
											</div>
											<div class="col-sm-1"><span class="symbol required"></span></div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-pass">
												Contraseña
											</label>
											<div class="col-sm-4">
												<input type="password" id="form-field-pass" class="form-control" name="password" minlength="6" maxlength="25" required>
											</div>
											<div class="col-sm-4">
												<input type="password" placeholder="Confirmar contraseña" id="form-field-cpass" class="form-control" name="password_again" minlength="6" maxlength="25" required>
											</div>
											<div class="col-sm-1"><span class="symbol required"></span></div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-nombre_pri">
												Nombre
											</label>
											<div class="col-sm-4">
												<input type="text" placeholder="Primero" id="form-field-nombre_pri" class="form-control" name="nombre_pri" minlength="2" maxlength="40" required>
											</div>
											<div class="col-sm-4">
												<input type="text" placeholder="Segundo" id="form-field-nombre_seg" class="form-control" name="nombre_seg" maxlength="25">
											</div>
<!--											<div class="col-sm-1"><span class="symbol required"></span></div>-->
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-apepat">
												Apellido
											</label>
											<div class="col-sm-4">
												<input type="text" placeholder="Paterno" id="form-field-apepat" class="form-control" name="apepat" minlength="2" maxlength="25" required>
											</div>
											<div class="col-sm-4">
												<input type="text" placeholder="Materno" id="form-field-apemat" class="form-control" name="apemat" minlength="2" maxlength="25" required>
											</div>
											<div class="col-sm-1"><span class="symbol required"></span></div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-email">
												E-mail
											</label>
											<div class="col-sm-8">
												<input type="email" placeholder="Ingresar e-mail" id="form-field-email" class="form-control" name="email" maxlength="50" required>
											</div>
											<div class="col-sm-1"><span class="symbol required"></span></div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-select-role">Perfil</label>
											<div class="col-sm-8">
												<select id="form-field-select-role" class="form-control" name="role" required>
													<option value="">[ Elija un Perfil ]</option>
													<option value=""></option>
												
												</select>
											</div>
											<div class="col-sm-1"><span class="symbol required"></span></div>
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
			
				<div class="container">
					<!-- start: PAGE HEADER -->
					<div class="row">
						
					</div>
					<!-- end: PAGE HEADER -->
					<!-- start: PAGE CONTENT -->
					<div class="buttons-widget col-md-12 space20" style="padding-right:0;">
						
					</div>
					<div class="row">
						<div class="col-md-12">
							<!-- start: BASIC TABLE PANEL -->
							<div class="panel panel-default">
								<div class="panel-heading">
									
								</div>
								<div class="panel-body">
									<table class="table table-hover" id="sample-table-1">
										<thead>
											<tr>
												<th>Usuario</th>
												<th>Perfil</th>
												<th class="hidden-xs">Nombre</th>
												<th class="hidden-xs hidden-sm">E-mail</th>
												<th class="hidden-xs hidden-sm hidden-md">Fecha Registro</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
										
											<tr>
												<td class="hidden-xs">ltorres</td>
												<td class="hidden-xs hidden-sm">Admin</td>
												<td class="hidden-xs hidden-sm">Luis Torres</td>
												<td class="hidden-xs hidden-sm hidden-md">luis.torresc86@gmail.com</td>
												<td class="hidden-xs">15/10/2017</td>
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
							<!-- end: BASIC TABLE PANEL -->
						</div>
					</div>
					<!-- end: PAGE CONTENT-->
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
				</div>
			</div>
			</div>
			<!-- end: PAGE -->
		</div>
		<!-- end: MAIN CONTAINER -->
	</body>
</html>
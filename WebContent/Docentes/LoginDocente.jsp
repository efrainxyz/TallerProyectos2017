<%-- 
    Document   : disponibilidadHorDoc
    Created on : 10-mar-2017, 2:56:53
    Author     : Eduardo Castillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login</title>

    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <h1 align="center">Ingreso de disponibilidad Horaria de docente</h1>
    <div class="row text-center" >
        <div class="col-md-4"></div>
<div class="container col-lg-4">

      <form class="form-signin">
        <h2 class="form-signin-heading">Iniciar Sesión</h2>
        <label for="inputEmail" class="sr-only">Correo Electrónico</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email" required autofocus>
        <label for="inputPassword" class="sr-only">Contraseña</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Recordarme
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
            <div class="alert alert-success">
            <strong>Acceso válido!</strong>
            </div>
      </form>

    </div> <!-- /container -->
    <div class="col-md-4"></div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>

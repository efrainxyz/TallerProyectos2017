<%-- 
    Document   : disponibilidadAulas
    Created on : 09-mar-2017, 23:30:24
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
    <title>Ingreso de disponibilidad Horaria de docente Referido</title>

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
    <h1><img src="../imagenes/bannerusmp.png" alt="USMP" /></h1>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    
    <div class="row col-lg-11 center-block">
        
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!--
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">USMP</a>
                </div>
                -->
                <ul class="nav navbar-nav">
                  <li class="active"><a href="#">Inicio</a></li>
                  <li><a href="#">Agregar disponibilidad</a></li>
                  <li><a href="#">Agregar Intereses</a></li>
                  <li><a href="#">Agregar información personal</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span>Opciones</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Salir</a></li>
                 </ul>
            </div>
        </nav> 
        
    </div>
        <div class="row center-block">

    <div class="col-md-8">  
    
    <a class="btn btn-primary" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
 		Buscar Docente
	</a>
    <div class="collapse" id="collapseExample">
    <table class="table table-striped">
    			<tr>
    				<br>
    				<td class="col-sm-6">
    				<label for="nombre">Nombre(s)</label>
  				    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre(s)">
  				    </td>
  				    <td>
  				    <br>
  				    <button name ="" id="" type="button" class="btn btn-primary">
  				    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
  				    Buscar  				    
  				    </button>
  				    </td>
    			</tr>
    			<tr>
    				<td  class="col-sm-6">
    				<label for="apellidpaterno">Apellido Paterno</label>
  				    <input type="text" class="form-control" id="apellidpaterno" name="apellidpaterno" placeholder="Apellido Paterno">
  				    </td>
    				<td  class="col-sm-6">
    				<label for="apellidomaterno">Apellido Materno</label>
  				    <input type="text" class="form-control" id="apellidomaterno" name="apellidomaterno" placeholder="Apellido Materno">
  				    </td>
    			</tr>
    			</table>
    </div>
    <br><br>
				<table id="table-1" class="table table-bordered">
					<thead>
						<tr>
							<th>Nombre(s)</th>
							<th>Apellido Paterno</th>
							<th>Apellido Materno</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Juan</td>
							<td>Perez</td>
							<td>Arias</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</tfoot>
				</table>
        <table class="table">
        <!-- 
            <tr>
                <td>
                    Curso:
                </td>
                <td>
                    <select class="form-control">
                        <option>Algoritmos 1</option>
                        <option>Algoritmos 2</option>
                        <option>Software 1</option>
                     </select>
                </td>
            </tr>
            
             -->
             <!-- 
            <tr>
                <td>
                    Día:
                </td>
                <td>
                    <select class="form-control">
                        <option>Lunes</option>
                        <option>Martes</option>
                        <option>Miércoles</option>
                        <option>Jueves</option>
                        <option>Viernes</option>
                        <option>Sábado</option>
                     </select>
                </td>
            </tr>
            <tr>
                <td>
                    Hora:
                </td>
                <td>
                    <select class="form-control">
                        <option>08:00 - 9:30</option>
                        <option>08:00 - 10:15</option>
                        <option>09:30-10:45</option>
                     </select>
                </td>
            </tr>
             -->
        </table>       
                
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Día/Hora</th>
              <th>Lunes</th>
              <th>Martes</th>
              <th>Miércoles</th>
              <th>Jueves</th>
              <th>Viernes</th>
              <th>Sábado</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>08:00</td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>              
            </tr>
            <tr>
              <td>09:15</td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
            </tr>
            <tr>
              <td>9:45</td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
            </tr>
            <tr>
              <td>10:15</td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
            </tr>
            <tr>
              <td>10:45</td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
            </tr>
            <tr>
              <td>11:00</td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
            </tr>
            <tr>
              <td>11:15</td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
            </tr>
            <tr>
              <td>11:30</td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
              <td><input type="checkbox" name="" value=""></td>
            </tr>
          </tbody>
        </table>        
    </div>
    <div><br><br><br><br><br><br><br></div>
    <div><br><br><br><br><br><br><br></div>
    <div><br><br><br><br><br><br><br></div>
        <div class="col-md-4">
            <button type="button" class="btn btn-success">Limpiar</button>
        </div>
            
        <div class="col-md-4">
            <button type="button" class="btn btn-primary">Grabar Disponibilidad</button>
        </div>
        <div class="col-md-4">
        
        	<label><br><br><br>Seleccione para cambiar <br>el estado a No Disponible</label>
        </div>
        </div> 
        
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %> 
<!DOCTYPE html>
	<html lang="en">
  	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Crear Persona</title>

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
    <h1>Crear Persona</h1>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../boostrap/js/bootstrap.min.js"></script>
    
    <div class="row col-lg-11 center-block">
    	<div class="col-md-6">  
        	<table class="table">
			    <form class="form-control" method="post" action="">
			    <tr>
				    <label>Id:</label>
				    <input type="text" class="form-control" name="id"/>
				</tr>
				<tr>
				    <label>Nombre(s):</label>
				    <input type="text" class="form-control" name="nombre"/>
				</tr>    
				<tr>
				    <label>Apepat:</label>
				    <input type="text" class="form-control" name="apepat"/>
				</tr>    
				<tr>
				    <label>Apemat:</label>
				    <input type="text" class="form-control" name="apemat"/>
				</tr>    
				<tr>
				    <label>Tipdoc:</label>
				    <input type="text" class="form-control" name="tipdoc"/>
				</tr>    
				<tr>
				    <label>Numdoc:</label>
				    <input type="text" class="form-control" name="numdoc"/>
				</tr> 
				<tr>
				</tr>   
				<tr>
					<td>
				    <input type="submit" class="btn btn-info" name="Agregar" value="Agregar"/>
				    </td>
				    <td>
				    <input type="submit" class="btn btn-success" name="Grabar" value="Grabar"/>				    
				    </td>
				</tr>
			  	</form>
			 </table>
		</div>
	</div>
	
	<div class="row col-lg-11 center-block">
    	<div class="col-md-6">  
        	<table class="table">		
				    <c:set var="n" value="0" />
				    <thead>
				    <th>Nombre</th>
				    <th>A.Paterno</th>
				    <th>A.Materno</th>
				    <th>DNI</th>
				    <th>NúmeroDNI</th>
				    </thead>
				    <tbody>
				    <c:forEach items="${sessionScope.lista}" var="r">
				    <tr>
				      <td>${r.nombre}</td>
				      <td>${r.apepat}</td>
				      <td>${r.apemat}</td>
				      <td>${r.tipdoc}</td>
				      <td>${r.numdoc}</td>
				      <td><a href="Eliminar?index=${n}">Eliminar</a></td>
				    </tr>
				    <c:set var="n" value="${n + 1}" />
				    </c:forEach>
				    </tbody>
        	</table>
        </div>
    </div>
    
    
  </body>
</html>
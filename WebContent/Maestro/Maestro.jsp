<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Maestro</title>

    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="../javascript1/miscript.js"></script>	
  </head>
  <body>  
    
    <h1><img src="../imagenes/bannerusmp.png" alt="USMP" /></h1>    
	
	
	<!-- div principal -->
	<div class="container-fluid">
    	<div class="row">
    	<!-- div seccion menu y seccion include -->
			  <div class="col-xs-2 col-md-2">
			  	<div><h4>Menu</h4></div>		
			  	<jsp:include page="../Menu/menu_lateral_izquierda.jsp" />
			  </div>
			  <!-- divs-->
			  <div class="col-xs-10 col-md-10">		
			  	<div class="maestro_seccion" id="maestro_seccion">
			  	
			  	</div>
    		  </div>
    	</div>
    	
    	   	
    </div>
    
    <script type="text/javascript" src="../javascript1/maestro.js"></script>
  </body>  
</html>
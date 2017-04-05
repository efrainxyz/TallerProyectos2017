
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
	 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <script>
  $( function() {
    $( "#draggable" ).draggable({ revert: "valid" });
    $( "#draggable2" ).draggable({ revert: "invalid" });
 
    $( "#droppable" ).droppable({
      classes: {
        "ui-droppable-active": "ui-state-active",
        "ui-droppable-hover": "ui-state-hover"
      },
      drop: function( event, ui ) {
        $( this )
          .addClass( "ui-state-highlight" )
          .find( "p" )
            .html( "Dropped!" );
      }
    });
  } );
  </script>
	<style>
		* Small devices (tablets, 768px and up) */
@media (min-width: @screen-sm-min) { 
	.col-xs-12{
		padding:5px;
		margin:5px;
		
	}
}
</style>
</head>
<body style="background-image: url('images/02.png');background-repeat: no-repeat; background-position: center; background-position: right;">
    <div> 
        <jsp:include page="cabecera.jsp" flush="true"/>
        <div class="row" style="text-align:right;padding:15px;">
        	<div class="col-md-12 ">
        		<p>Usuario Director</p>
        	</div>
        </div>
        <div class="container-fluid">
        	<div class="row">
        		<div class="col-md-9 col-xs-12">
        			
        		<input class="form form-control"  style="max-width:400px ; " type="text" readonly="readonly">
        		</div>
        		<div class="col-md-3">
        			<div class="row">
        				<div class="col-md-6" align="right"><button class="btn btn-success" style="width: 50px;height: 50px" >X</button></div>
						<div class="col-md-6" align="left"><button class="btn btn-success" style="width: 50px;height: 50px" >X</button></div>
        			</div>
        		</div>
        		<div class="col-md-12">
        			

 
<div id="draggable" class="ui-widget-content" style="width: 100px;height: 100px;background-color: red;">
  <p>I revert when I'm dropped</p>
</div>
 
<div id="draggable2" class="ui-widget-content" style="width: 100px;height: 100px;background-color: blue;">
  <p>I revert when I'm not dropped</p>
</div>
 
<div id="droppable" class="ui-widget-header" style="width: 100px;height: 100px;background-color: green;">
  <p>Drop me here</p>
</div>
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

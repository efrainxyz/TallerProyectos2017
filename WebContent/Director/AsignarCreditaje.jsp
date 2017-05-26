<%@page import="bean.DetusuescBean"%>
<%@page import="bean.EscuelaBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%Vector<DetusuescBean> user=(Vector<DetusuescBean>) session.getAttribute("usuario");
Vector<EscuelaBean> escuela=(Vector<EscuelaBean>) request.getAttribute("escuela");
%>
<%if(user==null){
	request.setAttribute("mensaje", "No inicio sesión");
	request.getRequestDispatcher("/login.jsp").forward(request, response);
}else{%>
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
        		<p>Usuario :  <%=user.get(0).getUsubean().getNombreusu() %></p>
        	</div>
        </div>
        <div class="container-fluid">
       		<div class="row">
       			<div class="container-fluid">
		<div class="dimencion">
			<h1>Asignar Créditros por Ciclo - Semestre Actual</h1>
		</div>
<%if(escuela.size()==0){ %>

<div class="alert alert-danger">
  <strong>Disculpe Ing.<%=user.get(0).getUsubean().getNombre()+" "+ user.get(0).getUsubean().getApePat()%> </strong> Usted ya ha realizado la asignación de acreditaje para todas las escuelas a su cargo.
</div>
<%}else { %>
	  <form action="<%=request.getContextPath()%>/gestionarPlan" method="post">
	  
		<div class="container-fluid borde_1 panel panel-danger">
			<select required="required" id="escuela" class="form-control" name="escuelas" >
			<option value="">Seleccione escuela</option>
		    	<%for(int i=0;i<escuela.size();i++){ %>
		    	<option value="<%=escuela.get(i).getIdescuela()%>"><%=escuela.get(i).getDescripcion()%></option>
		    	
		    	<%} %>    
		    </select>
		<input type="hidden" name="accion" value="creditaje">
		    <div class="col-lg-12 col-xs-12 center-block">
			    <div class="">
			        <div class="col-lg-12 col-xs-12 form-group" >
			        	
						<div class="col-md-6" width="100">
							<label for="sel1">Ciclo I</label>
					      <select class="form-control" id="sel1" name="c1">
					        <option value="22">22</option>
			                	<option value="23">23</option>
					      </select>   
			        	</div>
			        	<div class="col-md-6" width="100">
							<label for="sel1">Ciclo II</label>
					      <select class="form-control" id="sel1" name="c2">
					        <option value="22">22</option>
			                	<option value="23">23</option>
					      </select>   
			        	</div>
			        	<div class="col-md-6" width="100">
							<label for="sel1">Ciclo III</label>
					      <select class="form-control" id="sel1" name="c3">
					        <option value="22">22</option>
			                	<option value="23">23</option>
					      </select>   
			        	</div>
			        	<div class="col-md-6" width="100">
							<label for="sel1">Ciclo IV</label>
					      <select class="form-control" id="sel1" name="c4">
					        <option value="22">22</option>
			                	<option value="23">23</option>
					      </select>   
			        	</div>
			        	<div class="col-md-6" width="100">
							<label for="sel1">Ciclo V</label>
					      <select class="form-control" id="sel1" name="c5">
					        <option value="22">22</option>
			                	<option value="23">23</option>
					      </select>   
			        	</div>
			        	<div class="col-md-6" width="100">
							<label for="sel1">Ciclo VI</label>
					      <select class="form-control" id="sel1" name="c6">
					        <option value="22">22</option>
			                	<option value="23">23</option>
					      </select>   
			        	</div>
			        	<div class="col-md-6" width="100">
							<label for="sel1">Ciclo VII</label>
					      <select class="form-control" id="sel1" name="c7">
					        <option value="22">22</option>
			                	<option value="23">23</option>
					      </select>   
			        	</div>
			        	<div class="col-md-6" width="100">
							<label for="sel1">Ciclo VIII</label>
					      <select class="form-control" id="sel1" name="c8">
					        <option value="22">22</option>
			                	<option value="23">23</option>
					      </select>   
			        	</div>
			        	<div class="col-md-6" width="100">
							<label for="sel1">Ciclo IX</label>
					      <select class="form-control" id="sel1" name="c9">
					        <option value="22">22</option>
			                	<option value="23">23</option>
					      </select>   
			        	</div>
			        	<div class="col-md-6" width="100">
							<label for="sel1">Ciclo X</label>
					      <select class="form-control" id="sel1" name="c10">
					        <option value="22">22</option>
			                	<option value="23">23</option>
					      </select>   
			        	</div>
			        <div class="clearfix"></div>
			    </div>
		    </div>
		</div>	
		<div class="row">
			<div class="col-lg-6 col-xs-6 text-right"><button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plane"></span> Guardar</button></div>
			<div class="col-lg-6 col-xs-6"><button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Cancelar</button></div>
		</div>
       		
       		
       		</div></form>
       		<%} %>
    </div></div>
       	 </div>
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="<%=request.getContextPath()%>/Bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/Bootstrap/js/ie10-viewport-bug-workaround.js"></script>
        <script src="<%=request.getContextPath()%>/js/ModalAdministradores.js"></script>
        
    </div>
    
    <script type="text/javascript">
    $(document).ready(function() {
 	       	
    	accion="listarEscuelas";
    	$.get('<%=request.getContextPath() %>/gestionarPlan',{
    		accion:accion
    		
    	},function(response){
    		
    		var conta="";
    		var seleccion='<option value="0">Seleccione..</option>';
    		for( var i=0;i<response['object'].length;i++){
    		conta+='<option value='+response['object'][i]['idescuela']+'>'+response['object'][i]['descripcion']+'</optiion>';
    			
    		}
    		
    		//$('#escuela').html(seleccion+conta);
    		
    			
    		});
    	});
    
    </script>
</body>
</html>
<%}%>
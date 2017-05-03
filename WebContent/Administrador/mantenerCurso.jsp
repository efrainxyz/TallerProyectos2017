
<%@page import="bean.CursoBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<% Vector<CursoBean> bean=(Vector<CursoBean>) request.getAttribute("lista");%>
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
<script type="text/javascript">

	function estado(){
		var estado=$( "#estado" ).val();
		
		if(estado="Bloqueado"){
		$( "#estado" ).removeClass( "btn btn-danger" ).addClass( "btn btn-success" );
		$( "#estado" ).val("Activo");
		}else if(estado="Activo"){
			$( "#estado" ).removeClass( "btn btn-success" ).addClass( "btn btn-danger" );
			$( "#estado" ).val("Activo");
		}
		
		alert(estado);
		estado="";
		
	}
</script>
</head>
<body style="background-image: url('images/02.png');background-repeat: no-repeat; background-position: center; background-position: right;">
    <div> 
        <jsp:include page="cabecera.jsp" flush="true"/>
        <div class="row" style="text-align:right;padding:15px;">
        	<div class="col-md-12 ">
        		<p>Usuario Administrador</p>
        	</div>
        </div>
        <div class="container-fluid">
        	<div class="row">
        		<div class="col-md-12" > 
	        		<fieldset>
						    <legend>Listado de Cursos</legend>

						    
					</fieldset>
				</div>
				<div class="col-md-12" style="padding:15px;margin:15px;" align="center"> 
					<button  onclick='location.href="<%=request.getContextPath()%>/mantenerCurso?accion=agregarcurso";'  type="button" class="btn btn-primary" style="width:200px;height:50px; ">N</button><br/>Nuevo Curso
				</div>
				<%if(request.getAttribute("mensaje")!=null){ %>
				<div class="col-md-12 success" style="padding:15px;margin:15px;" align="center"> 
					
  						<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
 					<%=request.getAttribute("mensaje") %>
						
				</div>
				<%} %>
				<div class="col-md-12" style="padding:15px;margin:15px">
					 <table id="tabla" class="table table-striped" align="center">
					    <thead>
					      <tr>
					        <th>Codigo</th>
					        <th>Crédito</th>
					        <th>Nombre del Curso</th>
					        <th>HT</th>
					        <th>HL</th>
					        <th>HP</th>
					        <th>Propietario</th>
					        <th>Estado</th>
					        <th>Editar</th>
					      </tr>
					    </thead>
					    <tbody>
					    <%for(int i=0;i<bean.size();i++){ %>
					      <tr>
					        <td><%=bean.get(i).getIdcurso() %></td>
					        <td><%=bean.get(i).getNumeroCreditos() %></td>
					        <td><%=bean.get(i).getNombre() %></td>
					        <td><%=bean.get(i).getHorasTeoria() %></td>
					        <td><%=bean.get(i).getHorasLaboratorio() %></td>
					        <td><%=bean.get(i).getHorasPracticas() %></td>
					        <td><%=bean.get(i).getNombrePropietario()%></td>
					        <% if(bean.get(i).getEstado()==1){%>
					        <td><input type="button" onclick='location.href="<%=request.getContextPath()%>/mantenerCurso?accion=actualizarEstado&estado=<%=bean.get(i).getEstado() %>&idcurso=<%=bean.get(i).getIdcurso() %>";' id="estado" type="button" class="btn btn-success" value="Activo"></td>
							<%}else if(bean.get(i).getEstado()==0){ %>
							<td><input type="button" onclick='location.href="<%=request.getContextPath()%>/mantenerCurso?accion=actualizarEstado&estado=<%=bean.get(i).getEstado() %>&idcurso=<%=bean.get(i).getIdcurso() %>";' id="estado" type="button" class="btn btn-danger" value="Bloqueado"></td>
							<%} %>
					        <td><button type="button" class="btn btn-danger" onclick='location.href="<%=request.getContextPath()%>/mantenerCurso?accion=preactualizar&idcurso=<%=bean.get(i).getIdcurso() %>";' >X</button></td>
					      </tr>
					     <%} %>			      
					      
					    </tbody>
					  </table>
				
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

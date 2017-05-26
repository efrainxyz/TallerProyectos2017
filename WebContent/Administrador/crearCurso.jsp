
<%@page import="java.util.Vector"%>
<%@page import="bean.CursoBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<% Vector<CursoBean> lista=(Vector<CursoBean>) request.getAttribute("lista");%>
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
					<h1>Crear Curso</h1>
				</div>
			</div>
		<form action="<%=request.getContextPath()%>/mantenerCurso" onsubmit="return validar()" align="center" method="post">	
					
					<div class="row" align="center" style="padding: 15px;">
						<input name="accion" value="agregarCurso" type="hidden">	
						<div class="col-md-12 col-xs-6">
							Código SAP<input onkeypress="return solonumeros(event)"  required="required" maxlength="11" class="form form-control" onkeyup="buscarCursos()" id="idcursos" name="idcurso" type="text"
								style="max-width: 400px;">
						</div>
						<div class="col-md-12 col-xs-6">
							Nombre del Curso: <input required="required" class="form form-control" type="text"
								 name="nombrecurso" onkeypress="return sololetras(event)" style="max-width: 400px;">
						</div>
						<div class="col-md-12 col-xs-6">
							Propietario :
								<select required  class="form form-control" id="nompro"  name="nomProp" style="max-width: 400px;">
										<option value="0">Seleccione</option>
										<option value="Escuela Sistemas">Escuela Sistemas</option>
										<option value="Escuela Arquitectura">Escuela Arquitectura</option>
										<option value="Escuela Alimentarias">Escuela Alimentarias</option>
										<option value="Escuela Electronica">Escuela Electronica</option>
										
									</select>
								
						</div>
					</div>
					<div class="row" align="center" style="padding: 10px;">
						<div class="col-md-12 col-xs-12">
							<div class="row">
								<div class="col-md-12 col-xs-12" style="padding-top:8px;">
									<label for="Descripcion">Horas Teoria</label>
									<select required  onchange="calcularCreditos()" class="form form-control" id="horasteoria" name="horasteoria" style="max-width: 400px;">
										<option value="0">Seleccione</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
									</select>
								</div>
								<div class="col-md-12 col-xs-12" style="padding-top:8px;">
									<label for="Descripcion">Horas Prácticas</label>
									<select  required onchange="calcularCreditos()" class="form form-control" id="horaspractica" name="horaspractica" style="max-width: 400px;">
										<option value="">Seleccione</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
									</select>
								</div>
								<div class="col-xs-12 col-xs-12" style="padding-top:8px;">
									<label for="Descripcion">Horas Laboratorio</label>
									<select   class="form form-control" onchange="calcularCreditos()" id="horaslaboratorio" name="horaslaboratorio"  style="max-width: 400px;">
										<option value="0">Seleccione</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										
									</select>
								</div>
							
							</div>
						</div>
						<div class="col-md-12 form-group">
							<div class="row">
								<div class="col-md-12">
									Créditos del Curso <input class="form form-control"  type="text"
								placeholder="Credito curso" style="max-width: 400px;" id="creditos" name="credicurso" disabled="disabled">
								</div>
							</div>
							
						</div>
					</div>
				
				
					
					<div class="row" align="center" style="padding: 15px;">
						<div class="col-md-12 col-xs-12" style="padding: 15px;">
							<input class="btn btn-info" type="button" data-toggle="modal" data-target="#myModal" value="Requisito"
								style="max-width: 200px;">
						</div>
						<div class="col-md-12 col-xs-12" style="padding: 15px;">
							<input class="btn btn-danger" type="button" value="Cancelar"
								style="max-width: 200px;">
						</div>
						<div class="col-md-12 col-xs-12" style="padding: 15px;">
							<input class="btn btn-success" type="submit" value="Guardar"
								style="max-width: 200px;">
						</div>
					</div>
					
					<!-- MODAL REUIQISITOS -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Requisitos</h4>
      </div>
      <div class="modal-body">
      	<div class="row">
      		<div class="col-lg-12">
      			<div class="row">
      				<h4>Codigo de cursos requisitos</h4>
      				<div class="col-lg-12">
      					<h4>Requisitos por credito</h4><br/>
      					<div class="row">
      						<div class="col-md-8 col-xs-12"><input required="required" id="req1" name="req1" type="text" id="req1" class="form form-control" placeholder="Codigo curso 1" readonly="readonly"></div>
      						<div class="col-md-3 col-xs-8"><input class="btn btn-info" width="100" type="button" data-toggle="modal" data-target="#myModal2" value="Requisito"
								style="max-width: 200px;"></div>
      						<div class="col-md-1 col-xs-4" align="left"><input type="button" class="btn btn-danger" value="x" onclick="limpiar1()"></div>
      					</div><br/>
      					<div class="row">
      						<div class="col-md-8 col-xs-12"><input width="100" id="req2" name="req2" type="text" id="req2" class="form form-control" placeholder="Codigo curso 2" readonly="readonly"></div>
      						<div class="col-md-3 col-xs-8"><input class="btn btn-info" width="100" type="button" data-toggle="modal" data-target="#myModal3" value="Requisito"></div>
      						<div class="col-md-1 col-xs-4"><input type="button" class="btn btn-danger" value="x" onclick="limpiar2()"></div>
      					</div><br/>
      					<div class="row">
      						<div class="col-md-8 col-xs-12"><input width="100" id="req3" name="req3" type="text" id="req3"class="form form-control" placeholder="Codigo curso 3" readonly="readonly"></div>
      						<div class="col-md-3 col-xs-8"><input class="btn btn-info" width="100" type="button" data-toggle="modal" data-target="#myModal4" value="Requisito"></div>
      						<div class="col-md-1 col-xs-4"><input type="button" class="btn btn-danger" value="x" onclick="limpiar3()"></div>
      					</div>
      					
      					
      					
      					
      					
      				</div>
      			</div>
      		</div>
      		<div class="col-lg-12">
      			<div class="row">
      			
      				<div class="col-lg-12">
      				<h4>Requisitos por credito</h4>
      					<input name="req4" width="200" onkeypress="return solonumeros(event)"  name="req4" type="text" class="form form-control" placeholder="Nºs de creditos">
      				</div>
      				
      				<div class="col-lg-12">
      				<h4>Codigo corequisito</h4>
      					<input width="200" onkeypress="return solonumeros(event)" name="correquisito" type="text" class="form form-control" placeholder="Curso Corequisito" >
      				</div>
      			</div>
      		</div>
      		
      	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
      </div>
    </div>
  </div>
</div>

<!-- MODAL SELCCIONAR REQUIST -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabe">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Selecciones Curso - Requisito 1</h4>
      </div>
      <div class="modal-body">
      	<div class="row">
      	 <input id="searchTerm1" type="text" onkeyup="doSearch1()" />	
      		<table id="tabla1" class="table table-striped" align="center">
					    <thead>
					      <tr>
					        <th>Codigo</th>
					        <th>Crédito</th>
					        <th>Nombre del Curso</th>
					        <th></th>
					      </tr>
					    </thead>
					    <tbody>
					    <%for(int i=0;i<lista.size();i++){ %>
					      <tr>
					        <td><%=lista.get(i).getIdcurso() %></td>
					        <td><%=lista.get(i).getNombre() %></td>
					        <td><%=lista.get(i).getNumeroCreditos()%></td>
					        <td><input type="button" data-dismiss="modal" onclick='seleccionar1(<%=lista.get(i).getIdcurso()  %>)'  type="button" class="btn btn-success" value="Seleccione"></td>
					       </tr>
					     <%} %>			      
					      
					    </tbody>
					  </table>
      	</div>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabe">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Selecciones Curso - Requisito 2</h4>
      </div>
      <div class="modal-body">
      	<div class="row">
      	 <input id="searchTerm2" type="text" onkeyup="doSearch2()" />	
      		<table id="tabla2" class="table table-striped" align="center">
					    <thead>
					      <tr>
					        <th>Codigo</th>
					        <th>Crédito</th>
					        <th>Nombre del Curso</th>
					        <th></th>
					      </tr>
					    </thead>
					    <tbody>
					    <%for(int i=0;i<lista.size();i++){ %>
					      <tr>
					        <td><%=lista.get(i).getIdcurso() %></td>
					        <td><%=lista.get(i).getNombre() %></td>
					        <td><%=lista.get(i).getNumeroCreditos()%></td>
					        <td><input type="button" data-dismiss="modal" onclick='seleccionar2(<%=lista.get(i).getIdcurso()  %>)'  type="button" class="btn btn-success" value="Seleccione"></td>
					       </tr>
					     <%} %>			      
					      
					    </tbody>
					  </table>
      	</div>
      </div>
     
    </div>
  </div>
</div>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabe">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Selecciones Curso - Requisito 3</h4>
      </div>
      <div class="modal-body">
      	<div class="row">
      	 <input id="searchTerm1" type="text" onkeyup="doSearch1()" />	
      		<table id="tabla3" class="table table-striped" align="center">
					    <thead>
					      <tr>
					        <th>Codigo</th>
					        <th>Crédito</th>
					        <th>Nombre del Curso</th>
					        <th></th>
					      </tr>
					    </thead>
					    <tbody>
					    <%for(int i=0;i<lista.size();i++){ %>
					      <tr>
					        <td><%=lista.get(i).getIdcurso() %></td>
					        <td><%=lista.get(i).getNombre() %></td>
					        <td><%=lista.get(i).getNumeroCreditos()%></td>
					        <td><input type="button" data-dismiss="modal" onclick='seleccionar3(<%=lista.get(i).getIdcurso()  %>)'  type="button" class="btn btn-success" value="Seleccione"></td>
					       </tr>
					     <%} %>			      
					      
					    </tbody>
					  </table>
      	</div>
      </div>
     
<input type="hidden" id="existecurso">
    </div>
  </div>
</div>



			</form>
			
		</div>
		
<script>
    
function limpiar1(){
	document.getElementById("req1").setAttribute("value","");
}
function limpiar2(){
	document.getElementById("req2").setAttribute("value","");
}   
function limpiar3(){
	document.getElementById("req3").setAttribute("value","");
}   
function seleccionar1(id){
	document.getElementById("req1").setAttribute("value",id);
}
function seleccionar2(id){
	document.getElementById("req2").setAttribute("value",id);
}
function seleccionar3(id){
	document.getElementById("req3").setAttribute("value",id);
}
    function calcularCreditos(){
    	
    	
    	var hp=0;
    	var ht=0;
    	var hl=0;
    	
    	if(parseInt($("#horaspractica").val())>0){
    		hp=parseInt($("#horaspractica").val());
    	}
    	if(parseInt($("#horasteoria").val())>0){
    		ht=parseInt($("#horasteoria").val())
    	}
    	
    	if(parseInt($("#horaslaboratorio").val())>0){
    		hl=parseInt($("#horaslaboratorio").val());
    	}
    	
    	var creditos=ht+(hp/2)+(hl/2);
    	document.getElementById("creditos").setAttribute('value',creditos);
    	
    		
    }
    
    
    function buscarCursos(){
    	
    	var accion = "buscarcurso";
    	var idecurso =document.getElementById("idcursos").value;
    	
    	if(idecurso.length>10 && idecurso.length<12){
    	
	    	if(idecurso.length==11){
		    	$.post("mantenerCurso",{
		
		    		accion:accion,
		    		idecurso:idecurso
		    		
		    	},function(response){
		    		if(response['object']!=null){
		    			$("#idcursos").removeClass("form-control-success");
		    			$("#idcursos").addClass("form-control-success");
		    			$("#existecurso").val("0");
			    		alert("codigo no disponible");
		    		}else{
		    			$("#idcursos").addClass("form-control-success");
		    			$("#idcursos").removeClass("form-control-danger");
		    			$("#existecurso").val("1");
		    			alert("codigo dispoible");
		    		}
		    			
		    	});
	    	}
	    	
	    	return true;
    	}else{
    		
    		return false;
    		}
    }
    function validar(){
    	var idecurso =document.getElementById("idcursos").value;
    	
    	
    	if(idecurso.length<11 || idecurso.length>11){
    		alert("El codigo SAP debe ser de 11 dígitios, intente de nuevo.")
    		return false;
    	}else{
    		if($("#existecurso").val()==0){
    			alert("ERROR..Para continuar , debe elegir otro código SAP.");
    			return false;
    		}else if($("#existecurso").val()==1){
    			
    		alert("Todo bien");
    		return true;
    		
    		}
    	}
    }
    
    
    function doSearch1()
	{
		var tableReg = document.getElementById('tabla1');
		var searchText = document.getElementById('searchTerm1').value.toLowerCase();
		var cellsOfRow="";
		var found=false;
		var compareWith="";

		// Recorremos todas las filas con contenido de la tabla
		for (var i = 1; i < tableReg.rows.length; i++)
		{
			cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
			found = false;
			// Recorremos todas las celdas
			for (var j = 0; j < cellsOfRow.length && !found; j++)
			{
				compareWith = cellsOfRow[j].innerHTML.toLowerCase();
				// Buscamos el texto en el contenido de la celda
				if (searchText.length == 0 || (compareWith.indexOf(searchText) > -1))
				{
					found = true;
				}
			}
			if(found)
			{
				tableReg.rows[i].style.display = '';
			} else {
				// si no ha encontrado ninguna coincidencia, esconde la
				// fila de la tabla
				tableReg.rows[i].style.display = 'none';
			}
		}
	}
    
    function doSearch2()
	{
		var tableReg = document.getElementById('tabla2');
		var searchText = document.getElementById('searchTerm2').value.toLowerCase();
		var cellsOfRow="";
		var found=false;
		var compareWith="";

		// Recorremos todas las filas con contenido de la tabla
		for (var i = 1; i < tableReg.rows.length; i++)
		{
			cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
			found = false;
			// Recorremos todas las celdas
			for (var j = 0; j < cellsOfRow.length && !found; j++)
			{
				compareWith = cellsOfRow[j].innerHTML.toLowerCase();
				// Buscamos el texto en el contenido de la celda
				if (searchText.length == 0 || (compareWith.indexOf(searchText) > -1))
				{
					found = true;
				}
			}
			if(found)
			{
				tableReg.rows[i].style.display = '';
			} else {
				// si no ha encontrado ninguna coincidencia, esconde la
				// fila de la tabla
				tableReg.rows[i].style.display = 'none';
			}
		}
	}
    
    function doSearch3()
	{
		var tableReg = document.getElementById('tabla3');
		var searchText = document.getElementById('searchTerm3').value.toLowerCase();
		var cellsOfRow="";
		var found=false;
		var compareWith="";

		// Recorremos todas las filas con contenido de la tabla
		for (var i = 1; i < tableReg.rows.length; i++)
		{
			cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
			found = false;
			// Recorremos todas las celdas
			for (var j = 0; j < cellsOfRow.length && !found; j++)
			{
				compareWith = cellsOfRow[j].innerHTML.toLowerCase();
				// Buscamos el texto en el contenido de la celda
				if (searchText.length == 0 || (compareWith.indexOf(searchText) > -1))
				{
					found = true;
				}
			}
			if(found)
			{
				tableReg.rows[i].style.display = '';
			} else {
				// si no ha encontrado ninguna coincidencia, esconde la
				// fila de la tabla
				tableReg.rows[i].style.display = 'none';
			}
		}
	}
   
</script>
		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
		<script src="<%=request.getContextPath()%>/Bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath()%>/Bootstrap/js/ie10-viewport-bug-workaround.js"></script>
		<script src="<%=request.getContextPath()%>/js/validCampo.js"></script>		
	</div>
</body>

</html>

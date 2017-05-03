<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%> 
<!-- Modal -->
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
      					<input width="200" onkeyup="return buscarCursos(this)" id="req1" name="req1" type="text" id="req1" class="form form-control" placeholder="Codigo curso 1"><br/>
      					<input width="200" onkeyup="return buscarCursos(this)" id="req2"  name="req2" type="text" id="req2" class="form form-control" placeholder="Codigo curso 2"><br/>
      					<input width="200" onkeyup="return buscarCursos(this)" id="req3" name="req3" type="text" id="req3"class="form form-control" placeholder="Codigo curso 3"><br/>
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
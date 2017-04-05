$("#menuDocentes").click(function(){
	$("#maestro_seccion").load("../Docentes/Maestro_Docentes_Origen.jsp");
});

$("#menuACAD").click(function(){
	$("#maestro_seccion").load("../Cursos/Asignar_Cursos_Docente.jsp");
});

$("#menuMaulas").click(function(){
	$("#maestro_seccion").load("../Aulas/Maestro_Aulas.jsp");
});

$("#menuCurr").click(function(){
	$("#maestro_seccion").load("../Curricula/Consultar_Curricula.jsp");
});

$("#menuPerfiles").click(function(){
	$("#maestro_seccion").load("../Perfiles/Maestro_Perfiles.jsp");
});
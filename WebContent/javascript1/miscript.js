	
	
    function abrir_pop_HMD() {
      window.open("http://localhost:8080/taller001/Popup/Horario_Modificar_Docente.jsp", null, "height=300, width=600, status=yes, toolbar=no, menubar=no, location=no");
    }
  	
    
    function abrir_pop_MD() {
        window.open("http://localhost:8080/taller001/Popup/Docente_Documentos.jsp", null, "height=300, width=600, status=yes, toolbar=no, menubar=no, location=no");
      }
    
    function abrir_pop_Horario_Modificar_Aula() {
        window.open("http://localhost:8080/taller001/Popup/Horario_Modificar_Aula.jsp", null, "height=300, width=600, status=yes, toolbar=no, menubar=no, location=no");
    }
    
	  $( function() {
	    $( "#fechainicio" ).datepicker({
		    changeMonth:true,
			changeYear:true,
			yearRange:'1965:2017',
			dateFormat:'yy-mm-dd'
		    });
	    $( "#fechafin" ).datepicker({
	    	changeMonth:true,
			changeYear:true,
			yearRange:'1965:2017',
			dateFormat:'yy-mm-dd',
			duration:"slow",
			showButtonPanel: true
		    });
	  } );
	  
	  //suma Maestro_Docentes.jsp horas
	  function sumar (valor) {
		    var total = 0;	
		    valor = parseInt(valor); // Convertir el valor a un entero (número).		
		    total = document.getElementById('ntotal').innerHTML;		
		    // Aquí valido si hay un valor previo, si no hay datos, le pongo un cero "0".
		    total = (total == null || total == undefined || total == "") ? 0 : total;		
		    /* Esta es la suma. */
		    total = (parseInt(total) + parseInt(valor));		
		    // Colocar el resultado de la suma en el control "span".
		    document.getElementById('ntotal').innerHTML = total;
	  }
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
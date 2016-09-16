/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function nuevoAjax() {
    var xmlhttp = false;
    try {
        // Creacion del objeto AJAX para navegadores no IE Ejemplo:Mozilla, Safari 
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
            // Creacion del objet AJAX para IE
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (E) {
            if (!xmlhttp && typeof XMLHttpRequest != 'undefined')
                xmlhttp = new XMLHttpRequest();
        }
    }
    return xmlhttp;
}

function cargarEmpresaT(){
    alert("entro");
    var div = "formEmpresaT";
    var resul = document.getElementById("empT");
    var eleccion = "";
    if(resul.type==='checkbox' && resul.checked === true){
        eleccion = resul.value+"1";
    }else{
        eleccion = resul.value+"0";
    }
    alert(eleccion);
    ajax = nuevoAjax();
    
    parametros = "empresaTuristica=" + eleccion;
    url = "Procesar/cargarEmpresaTuristica.jsp";
    alert("entro2");
                ajax.open("POST",url,true);
		ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');   
		ajax.send(parametros);
		
		ajax.onreadystatechange=function()
		{
		  if (ajax.readyState==4)
		  {
		    if (ajax.status == 200)
		    {          	       	 
		       	  
		        document.getElementById(div).innerHTML = ajax.responseText;
		         	             
		    }
		    else
		    {    
		          
		         document.getElementById(div).innerHTML = ajax.responseText;
		         
		    }
		  } 
		  else
		  {
		    document.getElementById(div).value = "Cargando";
		  }
		}		
}
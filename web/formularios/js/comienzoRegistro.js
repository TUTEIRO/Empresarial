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


function validarCedula() {

    
    var cc = document.getElementById("num_cc");

    ajax = nuevoAjax();
    parametros = "cc=" + cc.value;  
    url = "Procesar/validarCedula.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);
     ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) {
            if (ajax.status == 200) {
                var rta = ajax.responseText;
                if (rta.indexOf("1") < 0 && rta.indexOf("2") < 0) {

                    document.getElementById("divError").innerHTML = ajax.responseText;

                } else {
                    if (rta.indexOf("1") >= 0) {
                      
                        location.href= "contacto.jsp?cc="+cc.value;
                        
                        
                    } else if (rta.indexOf("2") >= 0) {
                       
                        location.href= "datosCliente.jsp?cc="+cc.value;
                        
                    }
                }
            } else {
                var rta = ajax.responseText;
                if (rta.indexOf("1") < 0 && rta.indexOf("2") < 0) {
                    document.getElementById("divError").innerHTML = ajax.responseText;
                } else {
                    if (rta.indexOf("1") >= 0) {
                    
                        location.href= "contacto.jsp?cc="+cc.value;
                        comienzoRegistro.submit();
                    } else if (rta.indexOf("2") >= 0) {
                     
                        location.href= "datosCliente.jsp?cc="+cc.value;
                        comienzoRegistro.submit();
                    }
                }
            }
        } else
        {
            document.getElementById("divError").value = "Verificando Usuario...";
        }
    }

}

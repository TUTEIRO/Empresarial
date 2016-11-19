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

function cargarServicio() {
    alert("ento");
    var servicioSelect = document.getElementById("servicios_enti").value;
    var servicioText = document.getElementById("servicio_nuevo").value;
    alert(servicioText);
    ajax = nuevoAjax();
    parametros = "servicioSelect=" + servicioSelect + "&servicioText=" + servicioText;
    url = "Procesar/cargarServicios.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);
    ajax.onreadystatechange = function () {
        if (ajax.readyState === 4) {
            if (ajax.status === 200) {
                var rta = ajax.responseText;
                document.getElementById('tablaRegistro').innerHTML += rta;
                $('#servicios_enti').material_select();
            }
        }
    };
  

    document.getElementById("servicio_nuevo").value = '';

}

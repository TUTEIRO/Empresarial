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

function consultarContacto() {
    var div = "tablaF";
    var radios = document.getElementsByName('group6');
    var rate_value;
    for (var i = 0; i < radios.length; i++) {
        if (radios[i].checked) {
            rate_value = radios[i].value;
        }
    }
    var dato = documment.getElementById('buscar_contacto');
    
    ajax = nuevoAjax();

    parametros = "tipo="+rate_value.value+"&dato="+dato.value;
    url = "Procesar/ejecutarConsulta.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);

    ajax.onreadystatechange = function ()
    {
        if (ajax.readyState == 4)
        {
            if (ajax.status == 200)
            {

                document.getElementById(div).innerHTML = ajax.responseText;

            } else
            {

                document.getElementById(div).innerHTML = ajax.responseText;

            }
        } else
        {
            document.getElementById(div).value = "Cargando";
        }
    }
}
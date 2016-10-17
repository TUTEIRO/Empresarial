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

function modificarContacto() {
        alert("entro");
        var div = "actualizar";
        var nombre = document.getElementById("first_name");
        var apellidos = document.getElementById("last_name");
        var cc = document.getElementById("num_ced");
        var cargo = document.getElementById("cargo");
        var nivel_estudio = document.getElementById("niv_estud");
        var direccion = document.getElementById("direccion");
        var ciudad = document.getElementById("mun");
        var dpto = document.getElementById("departamento");
        var celular = document.getElementById("tel_cel");
        var fijo = document.getElementById("tel_fijo");
        var email = document.getElementById("email");
        var antiguedad_cargo = document.getElementById("anos_cargo");
        ajax = nuevoAjax();

        parametros = "nombres=" + nombre.value + "&apellidos=" + apellidos.value + "&cc=" + cc.value + "&cargo=" + cargo.value + 
                "&nivel_estudio=" + nivel_estudio.value + "&direccion=" + direccion.value + "&ciudad=" + ciudad.value + "&dpto=" + dpto.value +
                "&celular=" + celular.value + "&fijo=" + fijo.value + "&email=" + email.value + "&antiguedad=" + antiguedad_cargo.value;
        url = "Procesar/actualizarContacto.jsp";
        ajax.open("POST", url, true);
        ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        ajax.send(parametros);
        ajax.onreadystatechange = function ()
    {
        if (ajax.readyState == 4)
        {
            if (ajax.status == 200)
            {
                $(document).ready(function () {
                    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
                    $('.modal-trigger').leanModal();
                });
                $('#modal2').openModal();
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

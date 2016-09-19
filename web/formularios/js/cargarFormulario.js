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

function cargarEmpresaT() {

    var div = "formEmpresaT";
    var resul = document.getElementById("empT");
    var eleccion = "";
    if (resul.type === 'checkbox' && resul.checked === true) {
        eleccion = resul.value + "1";
    } else {
        eleccion = resul.value + "0";
    }

    ajax = nuevoAjax();

    parametros = "empresaTuristica=" + eleccion;
    url = "Procesar/cargarEmpresaTuristica.jsp";
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

function cargarMunicipiosAjax(sel) {

    var div = "municipio";
    var resul = sel;
    ajax = nuevoAjax();
    parametros = "departamento=" + resul.value;
    url = "Procesar/cargarMunicipio.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);
    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) {
            if (ajax.status == 200) {
                var rta = ajax.responseText;
                document.getElementById(div).innerHTML = rta;
            }
        }
    }
}

function registrarContacto() {
    var nombre = document.getElementById("first_name");
    var apellidos = document.getElementById("last_name");
    var cc = document.getElementById("num_ced");
    var cargo = document.getElementById("cargo");
    var lugar_nto = document.getElementById("lugar_nac");
    var fecha_nto = document.getElementById("fecha_nac");
    var nivel_estudio = document.getElementById("niv_estud");
    var direccion = document.getElementById("direccion");
    var ciudad = document.getElementById("municipio");
    var dpto = document.getElementById("departamento");
    var celular = document.getElementById("tel_cel");
    var fijo = document.getElementById("tel_fijo");
    var email = document.getElementById("email");
    var genero = document.getElementById("genero");
    var etnia = document.getElementById("grupo_etnico");
    var discapacidad = document.getElementById("discapacidad");
    var antiguedad_cargo = document.getElementById("anos_cargo");
    var condicion_desplazado = document.getElementById("desplazado");
    
    var despla = "";
    if (condicion_desplazado.type === 'checkbox' && condicion_desplazado.checked === true) {
        despla = condicion_desplazado.value + "1";
    } else {
        despla = condicion_desplazado.value + "0";
    }
    
    var dis= "";
    if (discapacidad.type === 'checkbox' && discapacidad.checked === true) {
        discapacidad = condicion_desplazado.value + "1";
    } else {
        discapacidad = condicion_desplazado.value + "0";
    }
    
    
}
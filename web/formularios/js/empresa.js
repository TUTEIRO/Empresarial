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

function registrarEmpresa() {

}

function consultarEmpresa() {

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



function registrarContacto() {
    var div = "mostrarModal";
    var nombre = document.getElementById("first_name");
    var apellidos = document.getElementById("last_name");
    var cc = document.getElementById("num_ced");
    var cargo = document.getElementById("cargo");
    var lugar_nto = document.getElementById("lugar_nac");
    var fecha_nto = document.getElementById("fecha_nac");
    var nivel_estudio = document.getElementById("niv_estud");
    var direccion = document.getElementById("direccion");
    var ciudad = document.getElementById("mun");
    var dpto = document.getElementById("departamento");
    var celular = document.getElementById("tel_cel");
    var fijo = document.getElementById("tel_fijo");
    var email = document.getElementById("email");
    var genero = document.getElementById("genero");
    var etnia = document.getElementById("etnia");
    

    var discapacidad = document.getElementById("discapacidad");
    var antiguedad_cargo = document.getElementById("anos_cargo");
    var condicion_desplazado = document.getElementById("desplazado");
    var despla = "";
    if (condicion_desplazado.type === 'checkbox' && condicion_desplazado.checked === true) {
        despla = "Si";
    } else {
        despla = "No";
    }
    var dis = "";
    if (discapacidad.type === 'checkbox' && discapacidad.checked === true) {
        dis = "Si";
    } else {
        dis = "No";
    }
    ajax = nuevoAjax();

    parametros = "nombres=" + nombre.value + "&apellidos=" + apellidos.value + "&cc=" + cc.value + "&cargo=" + cargo.value + "&lugar_nto=" + lugar_nto.value +
            "&fecha_nto=" + fecha_nto.value + "&nivel_estudio=" + nivel_estudio.value + "&direccion=" + direccion.value + "&ciudad=" + ciudad.value + "&dpto=" + dpto.value +
            "&celular=" + celular.value + "&fijo=" + fijo.value + "&email=" + email.value + "&genero=" + genero.value + "&etnia=" + etnia.value + "&discapacidad=" + dis + "&antiguedad=" + antiguedad_cargo.value + "&desplazado=" + despla;
    url = "Procesar/registrarContactoEmp.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);
    ajax.onreadystatechange = function ()
    {
        if (ajax.readyState == 4)
        {
            if (ajax.status == 200)
            {
                
                
                
                

                document.getElementById('empresa').style.display = 'block';       
                document.getElementById('contacto').style.display = 'none';     
                

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
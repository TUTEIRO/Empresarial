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


function validarUsuario() {
    alert("aqui");
    var usuario = document.getElementById("usuario");
    alert("aqui 2");
    var contraseña = document.getElementById("contraseña");
    alert("aqui 3");
    var tipo_usuario = document.getElementById("tipo_usuario");
    alert("aqui 4");
    validarUsuarioAjax(usuario, contraseña, tipo_usuario);
    aleatorio = Math.random();
    ajax = nuevoAjax();
    alert("aqui 5");
    parametros = "usuario=" + usuario + "&contraseña=" + contraseña + "&aleatorio=" + aleatorio + "&tipo=" + tipo_usuario;
    url = "procesarSesion.jsp";
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
                        login.action = "../inicio/principal.jsp";
                        login.submit();
                    } else if (rta.indexOf("2") >= 0) {
                        alert("empresa");
                        login.action = "";
                        login.submit();
                    }
                }
            } else {
                var rta = ajax.responseText;
                if (rta.indexOf("1") < 0 && rta.indexOf("2") < 0) {
                    document.getElementById("divError").innerHTML = ajax.responseText;
                } else {
                    if (rta.indexOf("1") >= 0) {
                        login.action = "../inicio/principal.jsp";
                        login.submit();
                    } else if (rta.indexOf("2") >= 0) {
                        alert("empresa");
                        login.action = "";
                        login.submit();
                    }
                }
            }
        } else
        {
            document.getElementById("divError").value = "Verificando Usuario...";
        }
    }
}

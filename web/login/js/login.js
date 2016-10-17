/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var pos = 1;
var posD = 1;


/* Crea el objeto AJAX. Esta funcion es generica para cualquier utilidad de este tipo, por
 lo que se puede copiar tal como esta aqui */
function nuevoAjax()
{
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

    var usuario = document.getElementById("usuario");

    var contrasena = document.getElementById("contrasena");

    var tipo_usuario = document.getElementById("tipo_usuario");


    aleatorio = Math.random();
    ajax = nuevoAjax();
    
    parametros = "usuario=" + usuario.value + "&contrasena=" + contrasena.value + "&aleatorio=" + aleatorio + "&tipo=" + tipo_usuario.value;
    url = "procesar/procesarSesion.jsp";
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
                        login.action = "";
                        login.submit();
                    }
                }
            } else {
                var rta = ajax.responseText;
                if (rta.indexOf("1") < 0 && rta.indexOf("2") < 0 && rta.indexOf("3") < 0) {
                    document.getElementById("divError").innerHTML = ajax.responseText;
                } else {
                    if (rta.indexOf("1") >= 0) {
                        login.action = "../inicio/principal.jsp";
                        login.submit();
                    } else if (rta.indexOf("2") >= 0) {
                        login.action = "";
                        login.submit();
                    } else if(rta.indexOf("3") >= 0){
                        alert("Error de autenticación");
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

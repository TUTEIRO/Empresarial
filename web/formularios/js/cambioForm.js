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


function cambiarForm(sel) {

    var div = "selec";
    var cambio = sel;

    ajax = nuevoAjax();
    parametros = "cambio=" + cambio.valueOf();
    url = "Procesar/cambioForm.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);
    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) {
            if (ajax.status == 200) {
                var rta = ajax.responseText;
                document.getElementById(div).innerHTML = rta;
                $('#contactoBTN').click(function () {
                    cambiarForm3();
                    cambiarForm("true");

                });

                $('#empresaBTN').click(function () {
                    cambiarForm2();
                    cambiarForm("false");

                });
            }
        }
    }

}

function cambiarForm2() {
    document.getElementById('empresa').style.display = 'block';
    document.getElementById('contacto').style.display = 'none';
}

function cambiarForm3() {
    document.getElementById('empresa').style.display = 'none';
    document.getElementById('contacto').style.display = 'block';
}


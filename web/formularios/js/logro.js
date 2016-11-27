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

function listarLogro(){
    var logroSelect = document.getElementById("logros_enti").value;
    var logroText = document.getElementById("logro_nuevo").value;
    if(logroSelect === "" && logroText === ""){
        alert("¡¡Seleccione o ingrese un logro!!");
    }else{
    ajax = nuevoAjax();
    parametros = "logroSelect=" + logroSelect + "&logroText=" +logroText;
    url = "Procesar/listarLogro.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);
    ajax.onreadystatechange = function () {
            if (ajax.readyState === 4) {
                var rta = ajax.responseText;
                if (ajax.status === 200) {
                    document.getElementById('tablaRegistroLogros').innerHTML += rta;
                    $('#servicios_enti').material_select();
                       
                }
            }
        };
        document.getElementById("logro_nuevo").value = '';
}
}

function asociarLogroServicio(servicio){
    var logro = document.getElementsByTagName('td');
    var infoLogro = "";
    var j=1;
    var n, p;
    for(var i=0; i<logro.length; i++){
        n = logro[i];
        while(n){
            p=n;
            n=p.childNodes[0];
        }
        if(true){
            if(j==1){
                infoLogro += p.parentNode.innerHTML;
                infoLogro +="::";
                j = 1;
        }
    }
    }
   
    ajax = nuevoAjax();
    parametros = "nombre_s=" + servicio + "&infoLogro=" + infoLogro;

    url = "Procesar/asociarLogro.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    ajax.send(parametros);

    ajax.onreadystatechange = function ()
    {
        if (ajax.readyState == 4)
        {
            if (ajax.status == 200)
            {
                var rta = ajax.responseText;
                if(rta.indexOf("1") < 0){
                     document.getElementById("divError").innerHTML = ajax.responseText;
                }else
                    if(rta.indexOf("1") >= 0){
                        alert("Registro de logros Exitoso");
                        window.close();
                }
            } else
            {
               var rta = ajax.responseText;
                if (rta.indexOf("1") < 0 && rta.indexOf("2") < 0) {
                    document.getElementById("divError").innerHTML = ajax.responseText;
                } else {
                    if (rta.indexOf("1") >= 0) {
                        alert("Registro de logros Exitoso");
                        window.close();
                    } else if(rta.indexOf("2") >= 0){
                        alert("Error en la conexión");

                    }
                } 
            }
        } else
        {
         document.getElementById("divError").value = "Cargando...";
        }
    }
}
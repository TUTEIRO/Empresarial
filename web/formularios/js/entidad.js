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
function registrarEntidad() {
    var div = "mostrarRegistro";
    alert("aqui");
    var nombre = document.getElementById("nom_entidad").value;
    var nit = document.getElementById("nit_entidad").value;
    var direccion = document.getElementById("dir_entidad").value;
    var ciudad = document.getElementById("ciudad_entidad").value;
    var tel_fijo = document.getElementById("tel_fijo_entidad").value;
    var tel_mov = document.getElementById("tel_movil_entidad").value;
    var mail = document.getElementById("correo_entidad").value;
    var url_web = document.getElementById("sitio_web_entidad").value;
    var servicio = document.getElementsByTagName('td');
    var infoServicio = "";
    var j=1;
    var n, p;
    for(var i=0; i<servicio.length; i++){
        n = servicio[i];
        while(n){
            p=n;
            n=p.childNodes[0];
        }
        if(true){
             if(j<2 && j!== 1){
                infoServicio += p.parentNode.innerHTML;
                infoServicio +=";";
                j += 1;
            }else if(j==1){
                infoServicio += p.parentNode.innerHTML;
                infoServicio +=";";
                j += 1;
            }else{
                infoServicio += p.parentNode.innerHTML;
                infoServicio +="::";
                j = 1;
        }
    }
    }
   


    ajax = nuevoAjax();
    parametros = "nombre=" + nombre + "&nit=" + nit+"&direccion="+direccion+"&ciudad="+ciudad+"&tel_fijo="+tel_fijo+
            "&tel_mov="+tel_mov+"&url_web="+url_web+"&mail="+mail+ "&infoServicio=" +infoServicio;
    url = "Procesar/registrarEntidad.jsp";
    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    
   
    ajax.send(parametros);
    ajax.onreadystatechange = function () {
        if (ajax.readyState === 4) {
            if (ajax.status === 200) {
                var rta = ajax.responseText;
                document.getElementById(div).innerHTML = ajax.responseText;
                 $(document).ready(function () {
                    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
                    $('.modal-trigger').leanModal();
                });
                $('#modal3').openModal();
                $('#servicios_enti').material_select();
            }
        }
    };




}


function cargarServicio() {
    var servicioSelect = document.getElementById("servicios_enti").value;
    var servicioText = document.getElementById("servicio_nuevo").value;
    if (servicioSelect === "" && servicioText === "") {
        alert("Por favor seleccione o ingrese un servicio");
    } else {
        ajax = nuevoAjax();
        parametros = "servicioSelect=" + servicioSelect + "&servicioText=" + servicioText;
        url = "Procesar/cargarServicios.jsp";
        ajax.open("POST", url, true);
        ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        ajax.send(parametros);
        ajax.onreadystatechange = function () {
            if (ajax.readyState === 4) {
                var rta = ajax.responseText;
                if (ajax.status === 200) {
                    document.getElementById('tablaRegistro').innerHTML += rta;
                    $('#servicios_enti').material_select();
                }
            }
        };


        document.getElementById("servicio_nuevo").value='';

    }
}
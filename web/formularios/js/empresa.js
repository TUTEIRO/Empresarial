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
    
    var cc_empleado = document.getElementById("num_ced");
    var nombre = document.getElementById("nombre_empresa");
    var nit = document.getElementById("nit");
    var rep_legal = document.getElementById("representante");
    var constitucion_legal = document.getElementById("cons_ot");
    var fecha_constitucion = document.getElementById("fecha_constitucion");
    var empleados_tc = document.getElementById("tc");
    var empleados_mt = document.getElementById("mt");
    var empleados_directo = document.getElementById("directo");
    var empleados_indirecto = document.getElementById("indirecto");
    var direccion = document.getElementById("direccion_empresa");
    var ciudad = document.getElementById("ciudad_empresa");
    var fijo = document.getElementById("tel_fijo__empresa");
    var celular = document.getElementById("tel_movil_empresa");
    var email = document.getElementById("correo_empresa");
    var sitio_web = document.getElementById("sitio_web");
    var servicios = document.getElementById("servicios");
    var reg_mercantil = document.getElementById("regis_mercan");
    var num_reg_mercantil = document.getElementById("num_reg_mercantil");
    var renovacion_mercantil = document.getElementById("ano_renovacion");
    var tipo_empresa = document.getElementById("tipo_emp");
    var codigo_ciiu = document.getElementById("codigoCIIU");
    var actividad_int = document.getElementById("actividad_int");
    var paises_trabajo = document.getElementById("paises_comercializa");
    var neg_internet = document.getElementById("neg_internet");
    var negocio_internet = "";
    if (neg_internet.type === 'checkbox' && neg_internet.checked === true) {
        negocio_internet = "Si";
    } else {
        negocio_internet = "No";
    }
    var empresa_turistica = document.getElementById("empT");
    var es_empresa_turistica = "";
    if (empresa_turistica.type === 'checkbox' && empresa_turistica.checked === true) {
        es_empresa_turistica = "Si";
    } else {
        es_empresa_turistica = "No";
    }
    var checkboxes1 = document.getElementById("tipo_emp_turistica");
    var tipo_emp_turistica = "";
    for (var x = 0; x < checkboxes1.elements.length; x++) {
        if ((checkboxes1[x].type === 'checkbox') && (checkboxes1[x].checked === true)) {
            var tipo1 = checkboxes1[x].value;
            tipo_emp_turistica = tipo_emp_turistica.concat(tipo1, "\n");
        }
    }
    var checkboxes2 = document.getElementById("tipo_alojamiento");
    var tipo_alojamiento = "";
     for (var x = 0; x < checkboxes2.elements.length; x++) {
        if ((checkboxes2[x].type === 'checkbox') && (checkboxes2[x].checked === true)) {
            var tipo2 = checkboxes2[x].value;
            tipo_alojamiento = tipo_alojamiento.concat(tipo2, "\n");
        }
    }
    var checkboxes3 = document.getElementById("tipo_turismo_desa");
    var tipo_turismo_desa = "";
     for (var x = 0; x < checkboxes3.elements.length; x++) {
        if ((checkboxes3[x].type === 'checkbox') && (checkboxes3[x].checked === true)) {
            var tipo3 = checkboxes3[x].value;
            tipo_turismo_desa = tipo_turismo_desa.concat(tipo3, "\n");
        }
    }
    
    ajax = nuevoAjax();

    parametros = "cc_contacto=" + cc_empleado.value + "&nombre=" + nombre.value + "&nit=" + nit.value + "&representante=" + rep_legal.value + "&constitucion_legal=" +constitucion_legal.value+ 
            "&fecha_constitucion=" +fecha_constitucion.value+ "&empleados_tc=" +empleados_tc.value+ "&empleados_mt=" +empleados_mt.value+
            "&empleados_directo=" +empleados_directo.value+ "&empleados_indirecto=" +empleados_indirecto.value+ "&direccion=" +direccion.value+
            "&ciudad=" +ciudad.value+ "&fijo=" +fijo.value+ "&celular=" +celular.value+ "&email=" +email.value+ "&sitio_web=" +sitio_web.value+
            "&servicios=" +servicios.value+ "&reg_mercantil=" +reg_mercantil.value+ "&num_reg_mercantil=" +num_reg_mercantil.value+
            "&ano_renovacion=" +renovacion_mercantil.value+ "&tipo_empresa=" +tipo_empresa.value + "&codigo_ciiu=" +codigo_ciiu.value+ "&actividad_int=" +actividad_int.value+ "&paises_trabajo=" +paises_trabajo.value+ "&negocio_internet=" +negocio_internet+ "&es_empresa_turistica=" +es_empresa_turistica+ "&tipo_emp_turistica=" +tipo_emp_turistica+
            "&tipo_alojamiento=" +tipo_alojamiento+ "&tipo_turismo_desa=" +tipo_turismo_desa;
    url = "Procesar/registrarEmpresa.jsp";
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
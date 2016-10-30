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

    var nombre = document.getElementById("nombre_empresa");
    var nit = document.getElementById("nit");
    var rep_legal = document.getElementById("representante");
    var constitucion_legal = document.getElementById("cons_ot");
    var otraConstitucion = "";
    if (constitucion_legal === "otras") {
        otraConstitucion = document.getElementById("cons_otros");
    } else {
        otraConstitucion = constitucion_legal.value;
    }
    var fecha_constitucion = document.getElementById("fecha_constitucion");
    var empleados_tc = document.getElementById("tc");
    var empleados_mt = document.getElementById("mt");
    var empleados_directo = document.getElementById("directo");
    var empleados_indirecto = document.getElementById("indirecto");
    var direccion = document.getElementById("direccion_empresa");
    var ciudad = document.getElementById("ciudad_empresa");
    var fijo = document.getElementById("tel_fijo_empresa");
    var celular = document.getElementById("tel_movil_empresa");
    var email = document.getElementById("correo_empresa");
    var sitio_web = document.getElementById("sitio_web");
    var servicios = document.getElementById("servicios_des");
    var reg_mercantil = document.getElementById("regis_mercan");
    var num_reg_mercantil = document.getElementById("num_reg_mercantil");
    var renovacion_mercantil = document.getElementById("ano_renovacion");
    var cc_contac = document.getElementById("num_ced");
    var tipo_empresa = document.getElementById("tipo_emp");
    var otraEmp = "";
    if (tipo_empresa.value === "otra") {
        otraEmp = document.getElementById("tipo_otra");
    } else {
        otraEmp = tipo_empresa.value;
    }

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
    
    if (es_empresa_turistica === "Si") {
        var checkboxes = document.getElementsByName("tipo_emp_turis");
        var tipo_emp_turistica = "";
        for (var x = 0; x < checkboxes.length; x++) {
            if ((checkboxes[x].type === 'checkbox') && (checkboxes[x].checked === true)) {
                var tipo1 = checkboxes[x].value;
                tipo_emp_turistica = tipo_emp_turistica.concat(tipo1, "\n");
            }
        }
        var checkboxes2 = document.getElementsByName("tipo_aloja");
        var tipo_alojamiento = "";
        for (var y = 0; y < checkboxes2.length; y++) {
            if ((checkboxes2[y].type === 'checkbox') && (checkboxes2[y].checked === true)) {
                var tipo2 = checkboxes2[y].value;
                tipo_alojamiento = tipo_alojamiento.concat(tipo2, "\n");
            }
        }

        var checkboxes3 = document.getElementsByName("tipo_turismo");
        var tipo_turismo_desa = "";
        for (var z = 0; z < checkboxes3.length; z++) {
            if ((checkboxes3[z].type === 'checkbox') && (checkboxes3[z].checked === true)) {
                var tipo3 = checkboxes3[z].value;
                tipo_turismo_desa = tipo_turismo_desa.concat(tipo3, "\n");
            }
        }

        var seguro_viaje = document.getElementById("seg_viaje");
        var cual = "";
        if (seguro_viaje.value === "Si") {
            cual = document.getElementById("seguro_cual");
        } else {
            cual = "No";
        }
        var reg_nac_turismo = document.getElementById("reg_nac_turismo");
        var nac_turismo = "";
        if (reg_nac_turismo.type === 'checkbox' && reg_nac_turismo.checked === true) {
            nac_turismo = "Si";
        } else {
            nac_turismo = "No";
        }
        var maneja_poliza = document.getElementById("poliza");
        var poliza = "";
        if (maneja_poliza.type === 'checkbox' && maneja_poliza.checked === true) {
            poliza = "Si";
        } else {
            poliza = "No";
        }
        var certificado_sostenibilidad = document.getElementById("cer_sostenibilidad");
        var reg_expor_servicio = document.getElementById("rut");
        var rut = "";
        if (reg_expor_servicio.type === 'checkbox' && reg_expor_servicio.checked === true) {
            rut = "Si";
        } else {
            rut = "No";
        }
        var libro_migracion = document.getElementById("libro_migracion");
        var libro = "";
        if (libro_migracion.type === 'checkbox' && libro_migracion.checked === true) {
            libro = "Si";
        } else {
            libro = "No";
        }
        var impues_turismo = document.getElementById("parafiscal");
        var parafiscal = "";
        if (impues_turismo.type === 'checkbox' && impues_turismo.checked === true) {
            parafiscal = "Si";
        } else {
            parafiscal = "No";
        }
        var cod_etica = document.getElementById("cod_etica");
        var etica = "";
        if (cod_etica.type === 'checkbox' && cod_etica.checked === true) {
            etica = "Si";
        } else {
            etica = "No";
        }
        var grup_etnico_empresario = document.getElementById("grupo_etnico_empresario");
        var cedula_extranjera = document.getElementById("ced_extranjeria");
        var observaciones = document.getElementById("observaciones")

        parametros = "nombre=" + nombre.value + "&nit=" + nit.value + "&representante=" + rep_legal.value + "&constitucion_legal=" + otraConstitucion +
                "&fecha_constitucion=" + fecha_constitucion.value + "&empleados_tc=" + empleados_tc.value + "&empleados_mt=" + empleados_mt.value +
                "&empleados_directo=" + empleados_directo.value + "&empleados_indirecto=" + empleados_indirecto.value + "&direccion=" + direccion.value +
                "&ciudad=" + ciudad.value + "&fijo=" + fijo.value + "&celular=" + celular.value + "&email=" + email.value + "&sitio_web=" + sitio_web.value +
                "&servicios=" + servicios.value + "&reg_mercantil=" + reg_mercantil.value + "&num_reg_mercantil=" + num_reg_mercantil.value +
                "&ano_renovacion=" + renovacion_mercantil.value + "&tipo_empresa=" + otraEmp + "&codigo_ciiu=" + codigo_ciiu.value + "&actividad_int=" + actividad_int.value + "&paises_trabajo=" + paises_trabajo.value + "&negocio_internet=" + negocio_internet + "&es_empresa_turistica=" + es_empresa_turistica + "&tipo_emp_turistica=" + tipo_emp_turistica +
                "&tipo_alojamiento=" + tipo_alojamiento + "&tipo_turismo_desa=" + tipo_turismo_desa + "&seguro_viaje=" + cual + "&reg_nac_turismo=" + nac_turismo +
                "&maneja_poliza=" + poliza + "&certificado_sostenibilidad=" + certificado_sostenibilidad.value + "&reg_expor_servicio=" + rut +
                "&libro_migracion=" + libro + "&impuesto_turismo=" + parafiscal + "&cod_etica=" + etica + "&grupo_etnico_empresario=" + grup_etnico_empresario.value +
                "&cedula_extranjeria=" + cedula_extranjera.value + "&observaciones=" + observaciones.value+"&cc_contacto="+cc_contac.value;
        url = "Procesar/registrarEmpresaTuris.jsp";
    } else {
        parametros = "nombre=" + nombre.value + "&nit=" + nit.value + "&representante=" + rep_legal.value + "&constitucion_legal=" + otraConstitucion +
                "&fecha_constitucion=" + fecha_constitucion.value + "&empleados_tc=" + empleados_tc.value + "&empleados_mt=" + empleados_mt.value +
                "&empleados_directos=" + empleados_directo.value + "&empleados_indirectos=" + empleados_indirecto.value + "&direccion=" + direccion.value +
                "&ciudad=" + ciudad.value + "&fijo=" + fijo.value + "&celular=" + celular.value + "&email=" + email.value + "&sitio_web=" + sitio_web.value +
                "&servicios=" + servicios.value + "&reg_mercantil=" + reg_mercantil.value + "&num_reg_mercantil=" + num_reg_mercantil.value +
                "&ano_renovacion=" + renovacion_mercantil.value + "&tipo_empresa=" + otraEmp + "&codigo_ciiu=" + codigo_ciiu.value + "&actividad_int=" + actividad_int.value +
                "&paises_trabajo=" + paises_trabajo.value + "&negocio_internet=" + negocio_internet + "&es_empresa_turistica=" + es_empresa_turistica+"&cc_contacto="+cc_contac.value;


        url = "Procesar/registrarEmpresa.jsp";

    }
    ajax = nuevoAjax();
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
                $('#seguro_viaje').click(function () {
                    var var_name = $("input[name='group10']:checked").val();

                    $('#seg_viaje').val(var_name);
                  
                    if (var_name === 'Si') {

                        $('#seguro_cual').prop("readonly", false);
                    } else {

                        $('#seguro_cual').prop("readonly", true);
                    }

                });

            } else
            {

                document.getElementById(div).innerHTML = ajax.responseText;
                $('#seguro_viaje').click(function () {
                    var var_name = $("input[name='group10']:checked").val();

                    $('#seg_viaje').val(var_name);
                    if (var_name === 'Si') {

                        $('#seguro_cual').prop("readonly", false);
                    } else {

                        $('#seguro_cual').prop("readonly", true);
                    }

                });

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
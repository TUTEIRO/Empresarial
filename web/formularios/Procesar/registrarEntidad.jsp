<%-- 
    Document   : registrarEntidad
    Created on : 26/11/2016, 09:44:00 AM
    Author     : tuto2
--%>
<%@page import="facade.Fachada"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Hashtable"%>
<%@page import="javazoom.upload.MultipartFormDataRequest"%>
<%@page import="javazoom.upload.UploadFile"%>
<%@page import="javazoom.upload.UploadBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String nit = "";
    String nombre = "";
    String direccion = "";
    String ciudad = "";
    String tel_fijo = "";
    String tel_mov = "";
    String url_web = "";
    String mail = "";

    Fachada fachada = new Fachada();

    System.out.println("hello");
    nit = request.getParameter("nit");
    nombre = request.getParameter("nombre");
    direccion = request.getParameter("direccion");
    ciudad = request.getParameter("ciudad");
    tel_fijo = request.getParameter("tel_fijo");
    tel_mov = request.getParameter("tel_mov");
    url_web = request.getParameter("url_web");
    mail = request.getParameter("mail");
    String infoServicio = request.getParameter("infoServicio");

    boolean msg = fachada.registrarEntidad(nombre, nit, direccion, ciudad, tel_fijo, tel_mov, mail, url_web);
    boolean exito = fachada.asociarServicioEntidad(nombre, infoServicio);
    if (msg == true && exito == true) {
%><div class="modal-content">
    <h2><label class="green-text"><center>¡¡REGISTRO EXITOSO!!</center></label></h2>
    <p>La entidad se ha registrado satifactoriamente en la base de datos</p>
</div>
<div class="modal-footer">
    <a href="../inicio/principal.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Volver al inicio</a>
</div>

<%
} else {

%><div class="modal-content">
    <h2><label class="green-text"><center>¡¡REGISTRO FALLIDO!!</center></label></h2>
    <p>Ha ocurrido un errror a la hora de registrar la entidad. Puede ser fallo de conexión a la base de datos o el contacto ya existe en la base de datos, si es esta por favor verifque la cedula</p>
</div>
<div class="modal-footer">
    <a href="../inicio/principal.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Volver al inicio</a>
    <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Continuar</a>
</div>

<%    }
%>

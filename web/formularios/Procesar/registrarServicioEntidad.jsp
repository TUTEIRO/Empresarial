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

    String nombre = "";
    Fachada fachada = new Fachada();
    nombre = request.getParameter("nombre");
    String infoServicio = request.getParameter("infoServicio");

    boolean exito = fachada.asociarServicioEntidad(nombre, infoServicio);
    if (exito == true) {
%><div class="modal-content">
    <h2><label class="blue-text"><center>¡¡REGISTRO EXITOSO!!</center></label></h2>
    <p>La entidad se ha registrado satifactoriamente en la base de datos</p>
</div>
<div class="modal-footer">
    <a href="entidad.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Continuar</a>
</div>


<%
} else {

%><div class="modal-content">
    <h2><label class="blue-text"><center>¡¡REGISTRO FALLIDO!!</center></label></h2>
    <p>Ha ocurrido un error a la hora de registrar la entidad. Puede ser fallo de conexión a la base de datos o un error a la hora de registrar los servicios con sus logros.</p>
</div>
<div class="modal-footer">
    <a href="entidad.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Continuar</a>
</div>

<%    }
%>

<%-- 
    Document   : registrarContacto
    Created on : 08-oct-2016, 12:38:00
    Author     : FARID SANTIAGO
--%>

<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");
    String nombres = request.getParameter("nombres");
    String apellidos = request.getParameter("apellidos");
    String cc = request.getParameter("cc");
    String cargo = request.getParameter("cargo");
    String lugar_nto = request.getParameter("lugar_nto");
    String fecha_nto = request.getParameter("fecha_nto");
    String nivel_estudio = request.getParameter("nivel_estudio");
    String direccion = request.getParameter("direccion");
    String ciudad = request.getParameter("ciudad");
    String dpto = request.getParameter("dpto");
    String celular = request.getParameter("celular");
    String fijo = request.getParameter("fijo");
    String email = request.getParameter("email");
    String genero = request.getParameter("genero");

    String discapacidad = request.getParameter("discapacidad");
    String desplazado = request.getParameter("desplazado");
    String correo_masivo = request.getParameter("correo_mas");
    int etnia = Integer.parseInt(request.getParameter("etnia"));

    String antiguedad = request.getParameter("antiguedad");
    int ant = Integer.parseInt(antiguedad);
    Fachada fachada = new Fachada();
    boolean exito = fachada.registrarContacto(nombres, apellidos, cc, cargo, lugar_nto, fecha_nto, nivel_estudio, direccion, ciudad, dpto, celular, fijo, email, genero, etnia, discapacidad, ant, desplazado,correo_masivo);

    if (exito) {
%>
<div class="modal-content">
    <h2><label class="green-text"><center>¡¡REGISTRO EXITOSO!!</center></label></h2>
    <p>El contacto se ha registrado satifactoriamente en la base de datos</p>
</div>
<div class="modal-footer">
    <a href="../inicio/principal.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Volver al inicio</a>
    <a href="contacto.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Continuar</a>
</div>


<%
} else {

%><div class="modal-content">
    <h2><label class="green-text"><center>¡¡REGISTRO FALLIDO!!</center></label></h2>
    <p>Ha ocurrido un errror a la hora de registrar el contacto. Puede ser fallo de conexión a la base de datos o el contacto ya existe en la base de datos, si es esta por favor verifque la cedula</p>
</div>
<div class="modal-footer">
    <a href="../inicio/principal.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Volver al inicio</a>
    <a href="contacto.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Continuar</a>
</div>

<%      }
%>
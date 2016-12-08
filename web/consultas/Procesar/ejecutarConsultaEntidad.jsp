<%-- 
    Document   : ejecutarConsultaEntidad
    Created on : Dec 7, 2016, 9:08:57 AM
    Author     : Mauricio
--%>

<%@page import="dto.EntidadDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Fachada fachada = new Fachada();
    String tipo = request.getParameter("valor_busq");
    String dato = request.getParameter("dato");
    ArrayList<EntidadDTO> emp = fachada.consultarEntidad(tipo, dato);
    if (!emp.isEmpty()) {
%>

<table class="striped highlight" bgcolor="white">
    <thead>
        <tr>
            <th data-field="nombre">Nombre</th>
            <th data-field="nit">NIT</th>
            <th data-field="direccion">Dirección</th>

            <th data-field="telefono">Telefono</th>

            <th data-field="url">URL Web Site</th>
            <th data-field="ser">Agregar servicios</th>
            <th data-field="info">Ver información</th>
        </tr>
    </thead>
    <%
        for (EntidadDTO e : emp) {
    %>
    <tr>
        <th data-field="nombre"> <%=e.getNombre()%></th>
        <th data-field="nit"><%=e.getNit()%></th>
        <th data-field="direccion"><%=e.getDireccion()%></th>

        <th data-field="telefono"><%=e.getCelular()%></th>

        <th data-field="url"><a target="_blank"href="http://<%=e.getSitio_web()%>"><%=e.getSitio_web()%></a></th>
        <th data-field="ser"><a class="btn  green" href="">Agregar</a></th>
        <th data-field="info"><a class="btn  green" href="../formularios/mostrarInformacionEntidad.jsp?nit=<%=e.getNit()%>">Ver</a></th>
    </tr>

    <% }%>
</table>
<%

} else {%>
<table class="striped highlight" bgcolor="white">
    <thead>
        <tr>
            <th data-field="nombre">Nombre</th>
            <th data-field="nit">NIT</th>

            <th data-field="direccion">Dirección</th>

            <th data-field="telefono">Telefono</th>

            <th data-field="url">URL Web Site</th>
            <th data-field="ser">Agregar servicios</th>
            <th data-field="info">Ver información</th>
        </tr>
    </thead>
    <tr>
        <td colspan ="10" ><center>No se encuentran datos con la busqueda digitada</center></td>
    </tr>
</table>
<%}%>
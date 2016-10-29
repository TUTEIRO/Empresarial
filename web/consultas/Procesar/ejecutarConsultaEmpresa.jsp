<%-- 
    Document   : ejecutarConsulta
    Created on : Oct 10, 2016, 4:45:37 PM
    Author     : Mauricio
--%>
<%@page import="dto.EmpresaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String tipo = request.getParameter("valor_busq");
    String dato = request.getParameter("dato");
    Fachada fachada = new Fachada();
    ArrayList<EmpresaDTO> emp = fachada.consultarEmpresa(tipo, dato);
    if (!emp.isEmpty()) {
%>

<table class="striped highlight" bgcolor="white">
    <thead>
        <tr>
            <th data-field="nombre">Nombre</th>
            <th data-field="nit">NIT</th>
            <th data-field="rep_legal">Representante legal</th>
            <th data-field="tipo_constitucion">Tipo de constitución</th>
            <th data-field="direccion">Dirección</th>
            <th data-field="ciudad">Ciudad</th>
            <th data-field="telefono">Telefono</th>
            <th data-field="email">E-mail</th>
            <th data-field="url">URL Web Site</th>
            <th data-field="editar">Editar</th>
        </tr>
    </thead>
    <%
        for (EmpresaDTO e : emp) {
    %>
    <tr>
        <th data-field="nombre"> <%=e.getNombre()%></th>
        <th data-field="nit"><%=e.getNit()%></th>
        <th data-field="rep_legal"><%=e.getNombre_rep_legal() %></th>
        <th data-field="tipo_constitucion"><%= e.getTipo_constitucion() %></th>
        <th data-field="direccion"><%=e.getDireccion() %></th>
        <th data-field="ciudad"><%=e.getCiudad()%></th>
        <th data-field="telefono"><%=e.getTelefono()%></th>
        <th data-field="email"<%=e.getEmail()%></th>
        <th data-field="url"><%=e.getUrl_website()%></th>
        <th data-field="editar">Editar</th>
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
            <th data-field="rep_legal">Representante legal</th>
            <th data-field="tipo_constitucion">Tipo de constitución</th>
            <th data-field="direccion">Dirección</th>
            <th data-field="ciudad">Ciudad</th>
            <th data-field="telefono">Telefono</th>
            <th data-field="email">E-mail</th>
            <th data-field="url">URL Web Site</th>
            <th data-field="editar">Editar</th>
        </tr>
    </thead>
    <tr>
        <th></th>
        <th ></th>
        <th ></th>
        <th ></th>
        <th ></th>
        <th >No se encontrarón resultados</th>
        <th ></th>
        <th ></th>
        <th></th>
        <th></th>
    </tr>
</table>
<%}%>
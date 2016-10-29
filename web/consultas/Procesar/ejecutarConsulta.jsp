<%-- 
    Document   : ejecutarConsulta
    Created on : Oct 10, 2016, 4:45:37 PM
    Author     : Mauricio
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.ContactoDTO"%>
<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String tipo = request.getParameter("valor_busq");
    String dato = request.getParameter("dato");

    Fachada fachada = new Fachada();
    ArrayList<ContactoDTO> cto = fachada.consultarContacto(tipo, dato);
    if (!cto.isEmpty()) {
%>

<table class="striped highlight" bgcolor="white">
    <thead>
        <tr>
            <th data-field="nombre">Nombre</th>
            <th data-field="apellido">Apellido</th>
            <th data-field="cedula">Cedula</th>
            <th data-field="direccion">Direccion</th>
            <th data-field="ciudad">Ciudad</th>
            <th data-field="telefono">Telefono</th>
            <th data-field="email">E-mail</th>
            <th data-field="editar">Editar</th>
        </tr>
    </thead>
    <%
        for (ContactoDTO c : cto) {
    %>
    <tr>
        <th data-field="nombre"><%= c.getNombres()%></th>
        <th data-field="apellido"><%= c.getApellidos()%></th>
        <th data-field="cedula"><%= c.getCc()%></th>
        <th data-field="direccion"><%= c.getDireccion()%></th>
        <th data-field="ciudad"><%= c.getCiudad()%></th>
        <th data-field="telefono"><%= c.getCelular()%></th>
        <th data-field="email"><%= c.getEmail()%></th>
        <th data-field="editar"><a class="btn waves-effect waves-light green" href="../formularios/ModificarCon.jsp?cc=<%=c.getCc()%>">Editar</a></th>
    </tr>

<% }%>
</table>
<%

    } else {%>
<table class="striped highlight" bgcolor="white">
    <thead>
        <tr>
            <th data-field="nombre">Nombre</th>
            <th data-field="apellido">Apellido</th>
            <th data-field="cedula">Cedula</th>
            <th data-field="direccion">Direccion</th>
            <th data-field="ciudad">Ciudad</th>
            <th data-field="telefono">Telefono</th>
            <th data-field="email">E-mail</th>
            <th data-field="editar">Editar</th>
        </tr>
    </thead>
    <tr>
        <th></th>
        <th ></th>
        <th ></th>
        <th ></th>
        <th >No se encontrarón resultados</th>
        <th ></th>
        <th ></th>
        <th ></th>
    </tr>
</table>
<%}%>

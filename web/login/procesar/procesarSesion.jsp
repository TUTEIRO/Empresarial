<%-- 
    Document   : procesarSesion
    Created on : 15/10/2016, 05:39:41 PM
    Author     : tuto2
--%>

<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = request.getParameter("usuario");
    String password = request.getParameter("contrasena");
    String tipo = request.getParameter("tipo");
    String mensaje = "";
    Fachada f = new Fachada();

    System.out.println(tipo);
    if (tipo.equals("administrador")) {
        if(f.login(tipo, user, password)){
            mensaje = "1";
        }else{
            mensaje = "3";
        }
    } else if (tipo.equals("empresa")) {
        mensaje = "2";
    }
    session.setAttribute("usuario", tipo);;
    session.setAttribute("estadoSesion", true);

    session.setMaxInactiveInterval(1 * 60 * 60);
%>
<%= mensaje%>
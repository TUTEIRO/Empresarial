<%-- 
    Document   : procesarSesion
    Created on : 15/10/2016, 05:39:41 PM
    Author     : tuto2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    System.out.println("hola");
    String user = request.getParameter("usuario");
    System.out.println("hola2");
    String password = request.getParameter("contrasena");
    System.out.println("hola3");
    String tipo = request.getParameter("tipo");
    System.out.println("hola4");
    String mensaje = "";

    System.out.println(tipo);
    if (tipo.equals("administrador")) {
        System.out.println("Entro");
        mensaje = "1";
    } else if (tipo.equals("empresa")) {
        System.out.println("yo igual");
        mensaje = "2";
    }
    session.setAttribute("usuario", tipo);;
    session.setAttribute("estadoSesion", true);

    session.setMaxInactiveInterval(1 * 60 * 60);

%>
<%= mensaje%>
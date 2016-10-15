<%-- 
    Document   : procesarSesion
    Created on : 15/10/2016, 05:39:41 PM
    Author     : tuto2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = request.getParameter("usuario");
    String password = request.getParameter("contraseña");
    String tipo = request.getParameter("tipo");
    String mensaje = "";
    if (true) {
        if (tipo.equals("administrador")) {
            System.out.println("Entro");
            mensaje = "1";
        } else if(tipo.equals("empresa")) {
            System.out.println("yo igual");
            mensaje= "2";
        }
        session.setAttribute("usuario", tipo);;
        session.setAttribute("estadoSesion", true);

        session.setMaxInactiveInterval(1 * 60 * 60);
    } else {
        mensaje = "Datos incorrectos";
    }
%>
<%= mensaje%>
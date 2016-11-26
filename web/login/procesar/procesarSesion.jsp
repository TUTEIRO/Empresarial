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
    String mensaje = "";
    Fachada f = new Fachada();

    
        if(f.login(user, password)){
            mensaje = "1";
        }else{
            mensaje = "2";
        }
   
    session.setAttribute("usuario", "administrador");;
    session.setAttribute("estadoSesion", true);

    session.setMaxInactiveInterval(1 * 60 * 60);
%>
<%= mensaje%>
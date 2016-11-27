<%-- 
    Document   : asociarLogro
    Created on : 26-nov-2016, 15:47:01
    Author     : FARID SANTIAGO
--%>

<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  
    Fachada fachada = new Fachada();
    String nombre_s = request.getParameter("nombre_s");
    String infoLogro = request.getParameter("infoLogro");
    String mensaje="";
    
    boolean exito = fachada.asociarServicioLogro(nombre_s, infoLogro);
    if(exito){
        mensaje = "0";
    }else{
        mensaje = "1";
    }
%>
<%=mensaje%>
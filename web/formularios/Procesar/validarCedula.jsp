<%-- 
    Document   : validarCedula
    Created on : 29/10/2016, 10:47:26 AM
    Author     : tuto2
--%>

<%@page import="dto.ContactoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String cc = request.getParameter("cc");

    String mensaje = "";
    Fachada fachada = new Fachada();
    ArrayList<ContactoDTO> lista = fachada.consultarContacto("cc", cc);
    if(lista.isEmpty()){
         mensaje = "1";
 
    }else{
         mensaje = "2";

    }
%>
<%=mensaje%>
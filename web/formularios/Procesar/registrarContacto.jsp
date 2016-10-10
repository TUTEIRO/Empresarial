<%-- 
    Document   : registrarContacto
    Created on : 08-oct-2016, 12:38:00
    Author     : FARID SANTIAGO
--%>

<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
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
        String etnia = request.getParameter("etnia");
        String discapacidad = request.getParameter("discapacidad");
        int antiguedad = Integer.parseInt(request.getParameter("antiguedad"));
        String desplazado = request.getParameter("desplazado");
        Fachada fachada = new Fachada();
    
        boolean exito = fachada.registrarContacto(nombres, apellidos, cc, cargo, lugar_nto, fecha_nto, nivel_estudio, direccion, ciudad, dpto, celular, fijo, email, genero, etnia, discapacidad, antiguedad, desplazado);
        
        if(exito){
%>
<h6><label class="green-text"><center>¡Registro Exitoso!</center></label></h6>

<%
        }else{
            
  %><h6><label class="green-text"><center>¡Registro Fallido!</center></label></h6>
  
  <%
        }
            %>
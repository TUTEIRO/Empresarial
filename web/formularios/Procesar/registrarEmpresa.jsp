<%-- 
    Document   : registrarEmpresa
    Created on : 22-oct-2016, 16:25:37
    Author     : FARID SANTIAGO
--%>

<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  
    String cc_contacto = request.getParameter("cc_contacto");
    String nombreEmpresa = request.getParameter("nombre");
    String nit = request.getParameter("nit");
    String representante = request.getParameter("representante");
    String constitucion_legal = request.getParameter("constitucion_legal");
    String fecha_constitucion = request.getParameter("fecha_constitucion");
    String empleados_tc = request.getParameter("empleados_tc");
    String empleados_mt = request.getParameter("empleados_mt");
    String empleados_directos = request.getParameter("empleados_directos");
    String emplados_indirectos = request.getParameter("empleados_indirectos");
    String direccion = request.getParameter("direccion");
    String ciudad = request.getParameter("ciudad");
    String fijo = request.getParameter("fijo");
    String celular = request.getParameter("celular");
    String email = request.getParameter("email");
    String sitio_web = request.getParameter("sitio_web");
    String servicios = request.getParameter("servicios");
    String reg_mercantil = request.getParameter("reg_mercantil");
    String num_reg_mercantil = request.getParameter("num_reg_mercantil");
    String ano_renovacion = request.getParameter("ano_renovacion");
    String negocio_internet = request.getParameter("negocio_internet");
    String es_empresa_turistica = request.getParameter("es_empresa_turistica");
    String tipo_emp_turistica = request.getParameter("tipo_emp_turistica");
    String tipo_alojamiento = request.getParameter("tipo_alojamiento");
    String tipo_turismo_desa = request.getParameter("tipo_turismo_desa");
    
    Fachada fachada = new Fachada();
    
    
%>
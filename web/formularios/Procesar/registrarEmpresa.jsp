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
    System.out.println("aqui");
    String nombreEmpresa = request.getParameter("nombre");
    System.out.println("aqui");
    String nit = request.getParameter("nit");
    System.out.println("aqui");
    String representante = request.getParameter("representante");
    System.out.println("aqui");
    String constitucion_legal = request.getParameter("constitucion_legal");
    System.out.println("aqui");
    String fecha_constitucion = request.getParameter("fecha_constitucion");
    System.out.println("aqui");
    int empleados_tc = Integer.parseInt(request.getParameter("empleados_tc"));
    System.out.println("aqui");
    int empleados_mt = Integer.parseInt(request.getParameter("empleados_mt"));
    System.out.println("aqui");
    int empleados_directos = Integer.parseInt(request.getParameter("empleados_directos"));
    System.out.println("aqui");
    int emplados_indirectos = Integer.parseInt(request.getParameter("empleados_indirectos"));
    System.out.println("aqui");
    String direccion = request.getParameter("direccion");
    System.out.println("aqui");
    String ciudad = request.getParameter("ciudad");
    System.out.println("aqui");
    String fijo = request.getParameter("fijo");
    System.out.println("aqui");
    String celular = request.getParameter("celular");
    System.out.println("aqui");
    String email = request.getParameter("email");
    System.out.println("aqui");
    String sitio_web = request.getParameter("sitio_web");
    System.out.println("aqui");
    String servicios = request.getParameter("servicios");
    System.out.println("aqui");
    String reg_mercantil = request.getParameter("reg_mercantil");
    System.out.println("aqui");
    String num_reg_mercantil = request.getParameter("num_reg_mercantil");
    System.out.println("aqui");
    String ano_renovacion = request.getParameter("ano_renovacion");
    System.out.println("aqui");
    String tipo_empresa = request.getParameter("tipo_empresa");
    System.out.println("aqui");
    String codigo_ciiu = request.getParameter("codigo_ciiu");
    System.out.println("aqui");
    String actividad_int = request.getParameter("actividad_int");
    System.out.println("aqui");
    String paises_trabajo = request.getParameter("paises_trabajo");
    
    String negocio_internet = request.getParameter("negocio_internet");
    
    String es_empresa_turistica = request.getParameter("es_empresa_turistica");
    
    
    Fachada fachada = new Fachada();
    boolean exito = fachada.registrarEmpresa(nombreEmpresa, nit, representante, constitucion_legal, fecha_constitucion, direccion, ciudad, fijo, celular, email, sitio_web, tipo_empresa, es_empresa_turistica, codigo_ciiu, actividad_int, paises_trabajo, servicios, reg_mercantil, negocio_internet, cc_contacto);
    boolean exito2 = fachada.registrarEmpleadosEmpresa(empleados_tc, empleados_mt, empleados_directos, emplados_indirectos);
    if(reg_mercantil.equalsIgnoreCase("si")){
    boolean exito3 = fachada.registrarRegistroMercantil(num_reg_mercantil, ano_renovacion);
    }
    
    
%>

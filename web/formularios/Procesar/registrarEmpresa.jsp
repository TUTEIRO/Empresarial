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
    int empleados_tc = Integer.parseInt(request.getParameter("empleados_tc"));
    int empleados_mt = Integer.parseInt(request.getParameter("empleados_mt"));
    int empleados_directos = Integer.parseInt(request.getParameter("empleados_directos"));
    int emplados_indirectos = Integer.parseInt(request.getParameter("empleados_indirectos"));
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
    String tipo_empresa = request.getParameter("tipo_empresa");
    String codigo_ciiu = request.getParameter("codigo_ciiu");
    String actividad_int = request.getParameter("actividad_int");
    String paises_trabajo = request.getParameter("paises_trabajo");
    String negocio_internet = request.getParameter("negocio_internet");
    String es_empresa_turistica = request.getParameter("es_empresa_turistica");
    String tipo_emp_turistica = request.getParameter("tipo_emp_turistica");
    String tipo_alojamiento = request.getParameter("tipo_alojamiento");
    String tipo_turismo_desa = request.getParameter("tipo_turismo_desa");
    
    Fachada fachada = new Fachada();
    boolean exito = fachada.registrarEmpresa(nombreEmpresa, nit, representante, constitucion_legal, fecha_constitucion, direccion, ciudad, fijo, celular, email, sitio_web, tipo_empresa, es_empresa_turistica, codigo_ciiu, actividad_int, paises_trabajo, servicios, reg_mercantil, negocio_internet, cc_contacto);
    boolean exito2 = fachada.registrarEmpleadosEmpresa(nit, empleados_tc, empleados_mt, empleados_directos, emplados_indirectos);
    boolean exito4 = fachada.registrarContactoEmpresa(cc_contacto);
    if(reg_mercantil.equalsIgnoreCase("si")){
        boolean exito3 = fachada.registrarRegistroMercantil(nit, num_reg_mercantil, ano_renovacion);
    }
    
%>
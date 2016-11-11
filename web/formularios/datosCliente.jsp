<%--
    Document   : datosCliente
    Created on : 11-nov-2016, 13:04:31
    Author     : FARID SANTIAGO
--%>

<%@page import="facade.Fachada"%>
<%@page import="dto.ContactoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String cc = request.getParameter("cc");
    Fachada fachada = new Fachada();
    ArrayList<ContactoDTO> lista = fachada.consultarContacto("cc", cc);
    for (ContactoDTO c : lista) {
%>
<jsp:include page="../plantillas/header.jsp"/>
<section id="datosContacto" class="datos">

    <div class="card-panel  white" >
        <h4><span class="green-text" style="font-weight: bold;">DATOS DEL CONTACTO</span></h4>

        <div class="row">
            <div class="col s12 ">
                <div class="row">
                    <form class="col s12" name="formdatos" id="formdatos">
                        <div class="row">
                            <div class="input-field col s4">
                                <input  readonly="true" id="num_ced" type="text" value="<%=c.getCc()%>">
                                <label for="num_ced">Numero de cedula:</label>
                            </div>
                            <div class="input-field col s4">
                                <input  readonly="true" id="nomb_cont" type="text" value="<%=c.getNombres()%>">
                                <label for="nomb_cont">Nombre contacto:</label>
                            </div>
                            <div class="input-field col s4">
                                <input  readonly="true" id="apell_cont" type="text" value="<%=c.getApellidos()%>">
                                <label for="apell_cont">Apellido contacto:</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input  readonly="true" id="cargo_cont" type="text" value="<%=c.getCargo()%>">
                                <label for="cargo_cont">Cargo del contacto:</label>
                            </div>
                            <div class="input-field col s6">
                                <input  readonly="true" id="antigu_cont" type="text" value="<%=c.getAnio_cargo()%>">
                                <label for="antigu_cont">Antiguedad de cargo:</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input  readonly="true" id="lugar_nac_cont" type="text" value="<%=c.getLugar_nacimiento()%>">
                                <label for="lugar_nac_cont">Lugar de nacimiento:</label>
                            </div>
                            <div class="input-field col s6">
                                <input  readonly="true" id="fecha_nac_cont" type="text" value="<%=c.getFecha_nacimiento()%>">
                                <label for="fecha_nac_cont">Fecha de nacimiento:</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s3">
                                <input  readonly="true" id="nivel_estudio_cont" type="text" value="<%=c.getNivel_estudio()%>">
                                <label for="nivel_estudio_cont">Nivel de estudio:</label>
                            </div>
                            <div class="input-field col s3">
                                <input  readonly="true" id="direccion_cont" type="text" value="<%=c.getDireccion()%>">
                                <label for="direccion_cont">Dirección:</label>
                            </div>
                            <div class="input-field col s3">
                                <input  readonly="true" id="ciudad_cont" type="text" value="<%=c.getCiudad()%>">
                                <label for="ciudad_cont">Ciudad:</label>
                            </div>
                            <div class="input-field col s3">
                                <input  readonly="true" id="depar_cont" type="text" value="<%=c.getDpto()%>">
                                <label for="depar_cont">Departamento:</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s3">
                                <input  readonly="true" id="tel_fijo_cont" type="text" value="<%=c.getFijo()%>">
                                <label for="tel_fijo_cont">Telefono fijo:</label>
                            </div>
                            <div class="input-field col s3">
                                <input  readonly="true" id="tel_movil_cont" type="text" value="<%=c.getCelular()%>">
                                <label for="tel_movil_cont">Telefono celular:</label>
                            </div>
                            <div class="input-field col s3">
                                <input  readonly="true" id="email_cont" type="text" value="<%=c.getEmail()%>">
                                <label for="email_cont">Correo electronico:</label>
                            </div>
                            <div class="input-field col s3">
                                <input  readonly="true" id="genero_cont" type="text" value="<%=c.getGenero()%>">
                                <label for="genero_cont">Genero:</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s4">
                                <input  readonly="true" id="etnia_cont" type="text" value="<%=c.getEtnia()%>">
                                <label for="etnia_cont">grupo etnico:</label>
                            </div>
                            <div class="input-field col s4">
                                <input  readonly="true" id="desplaz_cont" type="text" value="<%=c.getCondicion_desplazado()%>">
                                <label for="desplaz_cont">Condicion desplazado:</label>
                            </div>
                            <div class="input-field col s4">
                                <input  readonly="true" id="disca_cont" type="text" value="<%=c.getDiscapacidad()%>">
                                <label for="disca_cont">Discapacidad:</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <a class="btn waves-effect waves-light green" href="empresa.jsp?cc=<%=c.getCc()%>">Registrar empresa</a>
                            </div>
                        </div>
                        <jsp:include page="../plantillas/footer.jsp"/>
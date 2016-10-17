<%-- 
    Document   : formConModificar
    Created on : 12-oct-2016, 22:41:11
    Author     : FARID SANTIAGO
--%>

<%@page import="dto.ContactoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>

<%
    String cc = request.getParameter("cc");
    Fachada fachada = new Fachada();
    ArrayList<ContactoDTO> dto = fachada.consultarContacto("cc", cc);
    for (ContactoDTO c : dto) {
%>
<section id="contacto" class="contacto">
    <div class="card-panel  white" >
        <h4><span class="green-text" style="font-weight: bold;"> ACTUALIZAR CONTACTO</span></h4>

        <div class="row">
            <div class="col s12 ">
                <div class="row">
                    <form class="col s12" name="actualizarFormContacto" id="actualizarFormContacto" action="javascript:modificarContacto()" method="post">
                        <div class="row">
                            <div class="input-field col s12">
                                <input  id="num_ced" type="text" class="validate" value="<%=c.getCc()%>" readonly="true">
                                <label for="num_ced">Numero de cedula</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input required id="first_name" type="text" class="validate" value="<%=c.getNombres()%>">
                                <label for="first_name">Nombres</label>
                            </div>
                            <div class="input-field col s6">
                                <input required id="last_name" type="text" class="validate" value="<%=c.getApellidos()%>">
                                <label for="last_name">Apellidos</label>
                            </div>
                        </div>


                        <div class="row">
                            <div class="input-field col s10">
                                <input required id="cargo" type="text" class="validate" value="<%=c.getCargo()%>">
                                <label for="cargo">Cargo</label>
                            </div>
                            <div class="input-field col s2">
                                <input required id="anos_cargo" name="anos_cargo" type="number"  class="validate" value="<%=c.getAnio_cargo()%>">
                                <label for="anos_cargo">Años en cargo</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <select id="niv_estud">
                                    <option value="" disabled selected><%=c.getNivel_estudio()%></option>
                                    <option value="primaria">Primaria</option>
                                    <option value="bachiller">Bachiller</option>
                                    <option value="tecnica">Tecnica</option>
                                    <option value="profesional">Profesional</option>
                                    <option value="postgrado">Postgrado</option>
                                    <option value="otros">Otros</option>
                                </select>
                                <label for="niv_estud">Nivel de estudio</label>
                            </div>
                        </div>

                        <div class="row">

                            <div class="input-field col s6">
                                <select id="departamento" name="departamento" onchange="javascript:cargarMunicipiosAjax(this)" >
                                    <option value="" disabled selected><%=c.getDpto()%></option>
                                    <%
                                        ArrayList<String> lista = fachada.cargarDptos();
                                        for (String d : lista) {
                                    %>
                                    <option value="<%=d%>"><%=d%></option>
                                    <%}
                                    %>
                                </select>
                                <label>Departamento</label>

                            </div>
                            <div id="municipio">
                                <div class="input-field col s6">

                                    <select id="mun" name="mun">
                                        <option value="" disabled selected><%=c.getCiudad()%></option>

                                    </select>
                                    <label>Municipio</label> 
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input required id="direccion" type="text" class="validate" value="<%=c.getDireccion()%>">
                                <label for="direccion">Direccion</label> 
                            </div>
                        </div>


                        <div class="row">
                            <div class="input-field col s6">
                                <input required id="tel_fijo" type="tel" class="validate" value="<%=c.getFijo()%>">
                                <label for="tel_fijo">Telefono fijo</label> 
                            </div>
                            <div class="input-field col s6">
                                <input required id="tel_cel" type="tel" class="validate" value="<%=c.getCelular()%>">
                                <label for="tel_cel">Telefono celular</label> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input required id="email" type="email" class="validate" value="<%=c.getEmail()%>">
                                <label for="email">E-Mail</label>
                            </div>
                        </div>

                        <br></br>

                        


                        <script type="text/javascript" src="js/modificar.js"></script>
                        <script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
                        <%
                            }
                        %>
<%-- 
    Document   : formEntidades
    Created on : 19-sep-2016, 20:54:06
    Author     : FARID SANTIAGO
--%>

<%@page import="dto.ServicioDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="js/entidad.js"></script>

<%if (session.getAttribute("usuario") == null) {
        System.out.println("usuario");

        response.sendRedirect("../index.jsp");
    }%>
<jsp:include page="../plantillas/header.jsp"/>
<section id="entidad" class="entidad">

    <div class="card-panel  white" >
        <h4><span class="green-text" style="font-weight: bold;">INFORMACIÓN DE ENTIDADES ADSCRITAS</span></h4>

        <div class="row">
            <div class="col s12 ">
                <div class="row">
                   
                        <div class="row">
                            <div class="input-field col s6">
                                <input  id="nom_entidad" type="text" class="validate">
                                <label for="nom_entidad">Nombre de la entidad</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="nit_entidad" type="text" class="validate">
                                <label for="nit_entidad">Nit</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input id="dir_entidad" type="text" class="validate">
                                <label for="dir_entidad">Dirección de la entidad</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="ciudad_entidad" type="text" class="validate">
                                <label for="ciudad_entidad">Ciudad</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input id="tel_fijo_entidad" type="tel" class="validate">
                                <label for="tel_fijo_entidad">Teléfono fijo</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="tel_movil_entidad" type="tel" class="validate">
                                <label for="tel_movil_entidad">Teléfono móvil</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input id="correo_entidad" type="email" class="validate">
                                <label for="correo_entidad">Correo electrónico</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="sitio_web_entidad" type="text" placeholder="www.example.com" class="validate">
                                <label for="sitio_web_entidad">Sitio web</label>
                            </div>
                        </div>

                        <div class="file-field input-field col s12">
                            <div class="btn">
                                <span>Logo de la entidad</span>
                                <input id="logo_file" accept="image/x-png, image/gif, image/jpeg" type="file">
                            </div>
                            <div class="file-path-wrapper">
                                <input class="file-path validate" type="text" placeholder="Subir archivo de imagen del logo de la entidad">
                            </div>
                        </div>
                        <br>

                        <h4><span class="green-text" style="font-weight: bold;">REGISTRAR SERVICIOS DE LA ENTIDAD</span></h4>
                        <div class="row">
                            <div class="input-field col s12">
                                <select name="select" id="servicios_enti">
                                    <option value=""></option>
                                    <%
                                        Fachada fachada = new Fachada();
                                        ArrayList<ServicioDTO> servicios = fachada.listarServicios();
                                        for (ServicioDTO s : servicios) {
                                    %>
                                    <option value="<%=s.getServicio()%>"><%=s.getServicio()%></option>
                                    <%}%>
                                </select>
                                <label for="servicios_enti">Ingrese servicios:</label>
                            </div>
                            <div class="input-field col s12">
                                <input id="servicio_nuevo" name="servicio_nuevo" type="text" class="validate">
                                <label for="servicio_nuevo">Ingrese nuevo servicio:</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12">
                                <button id="buttonServicios"  class="waves-effect waves-light btn" onclick="cargarServicio()">Registrar Servicio</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12">
                                <table class="bordered">
                                    <thead>
                                        <tr>
                                            <th>Nombre del servicio</th>
                                            <th>Ver logros</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablaRegistro">

                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col s12">
                                <button id="buttonEntidad"  class="waves-effect waves-light btn" onclick="registrarEntidad()">Registrar Entidad</button>
                            </div>
                        </div>

                    
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
    function abrir(url) {
        open(url, '', 'top=1000,left=1000,width=1000,height=1000');
    }
    $(document).ready(function () {
        $('#buttonServicios').click(function () {
            var esto = $('#servicios_enti').val();
            if (esto !== "") {
                $('#servicios_enti').find("option[value='" + esto + "']").remove();
                $('#servicios_enti').material_select();
                $('#servicios_enti > option[value=""]').attr('selected', 'selected');
            }
        });
    });
</script>

<jsp:include page="../plantillas/footer.jsp"/>
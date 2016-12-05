<%-- 
    Document   : serviciosEntidad
    Created on : 05-dic-2016, 9:18:47
    Author     : FARID SANTIAGO
--%>

<%@page import="dto.ServicioDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/entidad.js"></script>
<!DOCTYPE html>
<%
    if (session.getAttribute("usuario") == null) {
        System.out.println("usuario");

        response.sendRedirect("../index.jsp");
    }%>
    <%
    
        String nombreEntidad = request.getParameter("nombre");
    %>
<jsp:include page="../plantillas/header.jsp"/>
<section id="entidad" class="entidad">

    <div class="card-panel  white" >
        <h4><span class="green-text" style="font-weight: bold;">REGISTRAR SERVICIOS DE LA ENTIDAD <%=request.getParameter("nombre").toUpperCase()%></span></h4>
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
                            <th>Registrar logros</th>
                        </tr>
                    </thead>
                    <tbody id="tablaRegistro">

                    </tbody>
                </table>
            </div>
        </div>

        <div class="row">
            <div class="col s12">
                <button id="buttonEntidad"  class="waves-effect waves-light btn" onclick="registrarServiciosEntidad(<%=nombreEntidad%>)">Registrar Entidad</button>
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
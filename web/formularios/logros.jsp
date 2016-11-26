<%-- 
    Document   : logros
    Created on : 19-nov-2016, 11:58:58
    Author     : FARID SANTIAGO
--%>

<%@page import="dto.LogroDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript" src="js/logro.js"></script>
<jsp:include page="../plantillas/header2.jsp"/>
<%
    String servicio = request.getParameter("servicio").toUpperCase();
%>
<section id="logros" class="logros">
    <div class="card-panel white">
        <h4><span class="green-text" style="font-weight: bold;">SERVICIO:  <%=servicio%></span></h4>
        <div class="row">
            <div class="input-field col s12">
                <select name="select" id="logros_enti" onchange="">
                    <option value=""></option>
                    <%
                        Fachada fachada = new Fachada();
                        ArrayList<LogroDTO> lista = fachada.listarLogros();
                        for (LogroDTO l : lista) {
                    %>
                    <option value="<%=l.getLogro()%>"><%=l.getLogro().toString()%></option>
                    <%}%>
                </select>
                <label for="logros_enti">Ingrese Logro:</label>
            </div>
            <div class="input-field col s12">
                <input id="logro_nuevo" name="logro_nuevo" type="text" class="validate">
                <label for="logro_nuevo">Ingrese nuevo Logro:</label>
            </div>
            <div class="row">
                <div class="col s12">
                    <button id="listarLogro"  class="waves-effect waves-light btn" onclick="listarLogro()">Listar</button>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s12">
                <table class="bordered">
                    <thead>
                        <tr>
                            <th>Logros</th>
                        </tr>
                    </thead>
                    <tbody id="tablaRegistroLogros">

                    </tbody>
                </table>
            </div>
        </div>

        <div class="row">
            <div class="col s12">
                <input id="buttoncheck" type="submit" class="waves-effect waves-light btn modal-trigger" href="#modal1" value="Registrar Logros al servicio <%=servicio%>" onclick="">
            </div>
        </div>
        <br><br>
        <div id="logrosActuales">
            <h4><span class="green-text" style="font-weight: bold">Logros Actuales</span></h4>
        </div>

    </div>


</section>
<script type="text/javascript">
    $(document).ready(function () {
        $('#listarLogro').click(function () {   
            var esto = $('#logros_enti').val();
            if (esto !== "") {
                $('#logros_enti').material_select();
                $('#logros_enti > option[value=""]').attr('selected', 'selected');
            }
        });
    });
</script>
<jsp:include page="../plantillas/footer.jsp"/>
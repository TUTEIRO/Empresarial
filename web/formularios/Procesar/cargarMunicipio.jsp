
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="facade.Fachada"%>
<%@page import="java.util.ArrayList"%>
<script language="javascript">
    $(document).ready(function () {
        $(".button-collapse").sideNav();
        $('select').material_select();
    });
</script>
<label for="mun">Municipio</label>
<div class="input-field col s6">

    <select  class="browser-default"id="mun" name="mun">
        <%

            String dep = request.getParameter("departamento");
            Fachada fachada = new Fachada();
            ArrayList<String> lista = fachada.cargarMun(dep);
            for (String d : lista) {

        %>
        <option value="<%=d%>"><%=d%></option>
        <%
            }

        %>


    </select>


</div>
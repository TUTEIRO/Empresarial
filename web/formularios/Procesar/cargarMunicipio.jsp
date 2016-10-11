
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="facade.Fachada"%>
<%@page import="java.util.ArrayList"%>
<script language="javascript">
    $(document).ready(function () {
        $(".button-collapse").sideNav();
        $('select').material_select();
    });
</script>

<div class="input-field col s6">

    <select  id="mun" name="mun">
        <option value="" disabled selected>Elige una opcion</option>
        <%
            request.setCharacterEncoding("UTF-8");
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
    <label for="mun">Municipio</label>


</div>
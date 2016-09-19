
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="facade.Fachada"%>
<%@page import="java.util.ArrayList"%>

<div class="input-field col s12">
    <select id="mun" name="mun">
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
    <label for="mun">Municipio</label>

</div>
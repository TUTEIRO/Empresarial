<%-- 
    Document   : entidades
    Created on : 19-sep-2016, 21:16:26
    Author     : FARID SANTIAGO
--%>

<jsp:include page="../plantillas/header.jsp"/>
<%if (session.getAttribute("usuario") == null) {
        System.out.println("usuario");

        response.sendRedirect("../index.jsp");
    }%>
<script type="text/javascript" src="js/consultas.js"></script>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>
<script language="javascript">
    $('select').material_select();
</script>
<br></br>
<div class="card-panel  white" >
    <div class="row">
        <div class="input-field col s12">
            <select id="valor_busq">
                <option value="" disabled selected>--Seleccione una opción--</option>
                <option value="nombre">Nombre de la Entidad</option>
                <option value="nit">NIT de la Entidad</option>
                <option value="mun">Municipio originario de la Entidad</option>
                <option value="tel">Teléfono</option>
            </select>
            <label for="valor_busq">Buscar por...</label>
        </div>
    </div>
    <nav>
        <div class="nav-wrapper">
            <form name="busq_ent" id="busq_ent" action="javascript:consultarEntidad()" method="post">
                <div class="input-field green darken-3">
                    <input id="buscar_entidad" type="search" required>
                    <label for="buscar_entidad"><i class="material-icons left">search</i></label>
                    <i class="material-icons">close</i>
                </div>
            </form>
            <script>
                $(document).ready(function ()) {
                    $("#busq").addEventListener('keypress', function (event) {
                        if (event.keyCode === 13) {
                            event.preventDefault();
                        }
                    });
                });
            </script>
        </div>
    </nav>
</div>
<br></br>

<div id="tablaV">
    <table class="striped highlight" bgcolor="white">
        <thead>
            <tr>
                <th data-field="nombre">Nombre</th>
                <th data-field="nit">NIT</th>
                <th data-field="direccion">Dirección</th>
                
                <th data-field="telefono">Telefono</th>
                
                <th data-field="url">URL Web Site</th>
                <th data-field="ser">Agregar servicios</th>
                <th data-field="info">Ver información</th>

            </tr>
        </thead>
        <tr>
            <td colspan ="10" ><center>No se encuentran datos con la busqueda digitada</center></td>
        </tr>
    </table>
</div>

<br></br>






<jsp:include page="../plantillas/footer.jsp"/>
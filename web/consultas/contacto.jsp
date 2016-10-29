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
                <option value="nombre">Nombre(s) de Contacto</option>
                <option value="apellido">Apellido(s) de Contacto</option>
                <option value="cc">Documento de Identidad</option>
                <option value="dpto">Departamento de Residencia</option>
                <option value="mun">Municipio de Residencia</option>
                <option value="pais">País de Origen</option>
            </select>
            <label for="valor_busq">Buscar por...</label>
        </div>
    </div>

    <nav>
        <div class="nav-wrapper">
            <form name="busq" id="busq" action="javascript:consultarContacto()" method="post">
                <div class="input-field green darken-3">
                    <input id="buscar_contacto" type="search" required>
                    <label for="buscar_contacto"><i class="material-icons left">search</i></label>
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

<div id="tablaF">
    <table class="striped highlight" bgcolor="white">
        <thead>
            <tr>
                <th data-field="nombre">Nombre</th>
                <th data-field="apellido">Apellido</th>
                <th data-field="cedula">Cedula</th>
                <th data-field="direccion">Direccion</th>
                <th data-field="ciudad">Ciudad</th>
                <th data-field="telefono">Telefono</th>
                <th data-field="email">E-mail</th>
                <th data-field="editar">Editar</th>

            </tr>
        </thead>
        <tr>
            <td colspan ="8" ><center>No se encuentran datos con la busqueda digitada</center></td>
        </tr>
    </table>
</div>
<br></br>





<jsp:include page="../plantillas/footer.jsp"/>

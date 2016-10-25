<jsp:include page="../plantillas/header.jsp"/>
<%if (session.getAttribute("usuario") == null) {
        System.out.println("usuario");

        response.sendRedirect("../index.jsp");
    }%>
<script type="text/javascript" src="js/consultas.js"></script>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>
<script type="text/javascript">
    $(document).ready(function () {


        $('#radios').click(function () {

            var var_name = $("input[name='group13']:checked").val();
            $('#tipo').val(var_name);

        });


    });
</script>
<br></br>
<div class="card-panel  white" >

    <div class="row" id="radios">
        <div class="input-field col s3">

            <label for=""><h5>Buscar por</h5></label> 
        </div>

        <div class="input-field col s3">
            <p>
                <input name="group13" type="radio" id="nombre_empresa" value="nombre"/>
                <label for="nombre_empresa">Nombre de empresa</label>
            </p> 
        </div>
        <div class="input-field col s3">
            <p>
                <input name="group13" type="radio" id="nit_empresa" value="nit"/>
                <label for="nit_empresa">NIT de empresa</label>
            </p> 
        </div>
        <div class="input-field col s3">
            <p>
                <input name="group13" type="radio" id="cc_contacto" value="cc"/>
                <label for="cc_contacto">CC. Contacto</label>
            </p> 
        </div>

    </div>
    <input hidden="true" id="tipo" name="tipoEmp"/>
    <nav>
        <div class="nav-wrapper">
            <form name="busq_emp" id="busq_emp" action="javascript:consultarEmpresa()" method="post">
                <div class="input-field green darken-3">
                    <input id="buscar_empresa" type="search" required>
                    <label for="buscar_empresa"><i class="material-icons left">search</i></label>
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
                <th data-field="rep_legal">Representante legal</th>
                <th data-field="tipo_constitucion">Tipo de constitución</th>
                <th data-field="direccion">Dirección</th>
                <th data-field="ciudad">Ciudad</th>
                <th data-field="telefono">Telefono</th>
                <th data-field="email">E-mail</th>
                <th data-field="url">URL Web Site</th>
                <th data-field="editar">Editar</th>

            </tr>
        </thead>
        <tr>
            <td colspan ="10" ><center>No se encuentran datos con la busqueda digitada</center></td>
        </tr>
    </table>
</div>

<br></br>






<jsp:include page="../plantillas/footer.jsp"/>
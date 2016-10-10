<jsp:include page="../plantillas/header.jsp"/>
<script type="text/javascript" src="js/consultas.js"></script>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>

<br></br>
<div class="card-panel  white" >

    <div class="row">
        <div class="input-field col s4">

            <label for=""><h5>Buscar por</h5></label> 
        </div>
        <div class="input-field col s4">
            <p>
                <input name="group6" type="radio" id="nombre_contacto" value="nombre"/>
                <label for="nombre_contacto">Nombre de contato</label>
            </p> 
        </div>
        <div class="input-field col s4">
            <p>
                <input name="group6" type="radio" id="cedula" value="cc"/>
                <label for="cedula">Cedula</label>
            </p> 
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
                document.getElementById('busq').addEventListener('keypress', function (event) {
                    if (event.keyCode === 13) {
                        event.preventDefault();
                    }
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
        </tr>
    </table>
</div>
<br></br>





<jsp:include page="../plantillas/footer.jsp"/>

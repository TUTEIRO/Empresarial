<jsp:include page="../plantillas/header.jsp"/>
<%if (session.getAttribute("usuario") == null) {
        System.out.println("usuario");

        response.sendRedirect("../index.jsp");
    }%>
<br></br>
<div class="card-panel  white" >

    <div class="row">
        <div class="input-field col s3">

            <label for=""><h5>Buscar por</h5></label> 
        </div>
        <div class="input-field col s3">
            <p>
                <input name="group7" type="radio" id="nombre_empresa" />
                <label for="nombre_empresa">Nombre de empresa</label>
            </p> 
        </div>
        <div class="input-field col s3">
            <p>
                <input name="group8" type="radio" id="nit_empresa" />
                <label for="nit_empresa">NIT de empresa</label>
            </p> 
        </div>
        
    </div>

    <nav>
        <div class="nav-wrapper">
            <form>
                <div class="input-field green darken-3">
                    <input id="buscar_empresa" type="search" required>
                    <label for="buscar_empresa"><i class="material-icons left">search</i></label>
                    <i class="material-icons">close</i>
                </div>
            </form>
        </div>
    </nav>
</div>
<br></br>

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

<br></br>






<jsp:include page="../plantillas/footer.jsp"/>
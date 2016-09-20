<%-- 
    Document   : entidades
    Created on : 19-sep-2016, 21:16:26
    Author     : FARID SANTIAGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantillas/header.jsp"/>

<br></br>
<div class="card-panel  white" >

    <div class="row">
        <div class="input-field col s3">

            <label for=""><h5>Buscar por</h5></label> 
        </div>
        <div class="input-field col s3">
            <p>
                <input name="group8" type="radio" id="nombre_entidad" />
                <label for="nombre_entidad">Nombre de entidad</label>
            </p> 
        </div>
        <div class="input-field col s3">
            <p>
                <input name="group8" type="radio" id="nit_entidad" />
                <label for="nit_entidad">NIT de entidad</label>
            </p> 
        </div>
        
    </div>

    <nav>
        <div class="nav-wrapper">
            <form>
                <div class="input-field green darken-3">
                    <input id="buscar_entidad" type="search" required>
                    <label for="buscar_entidad"><i class="material-icons left">search</i></label>
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
            <th data-field="direccion">Direccion</th>
            <th data-field="telefono">Telefono</th>
            <th data-field="url">URL Web Site</th>
            <th data-field="editar">Editar</th>

        </tr>
    </thead>
    <tr>
        <td colspan ="5" ><center>No se encuentran datos con la busqueda digitada</center></td>
</tr>
</table>

<br></br>






<jsp:include page="../plantillas/footer.jsp"/>
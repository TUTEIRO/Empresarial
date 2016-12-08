<%-- 
    Document   : principal
    Created on : 5/09/2016, 04:24:13 PM
    Author     : tuto2
--%>

<jsp:include page="../plantillas/header.jsp"/>
<%if (session.getAttribute("usuario") == null) {
        System.out.println("usuario");

        response.sendRedirect("../index.jsp");
    }%>
<div class="row">

    <div class="col s5" >
        <div class="card-panel green darken-3 ">
            <span class="white-text">Informacion Personal</span>
        </div>
        <div class="card-panel white">
            <div class="container ">
                <img src="../images/empleado_1.png" alt="" class="circle responsive-img">
            </div>
            <br></br>
            <span>Nombre: Esquiles Dario</span><p>
                <span>Apellidos: Castro Arsiniega</span><p>
                <span>Ocupacion: Asesor</span><p>
                <span>Correo: ttutteiro@gmail.com</span><p>
                 <span>Direccion: Calle 34N # 4B - 53 Desecho </span>
        </div>

    </div>
    <div class="col s7">
        <div class="card-panel green darken-3 ">
            <span class="white-text">Registro</span>
        </div>
        <ul class="collection">
            <li class="collection-item avatar">
                <i class="material-icons circle red">library_add</i>
                <span class="title" style="font-weight: bold;">Registrar contacto o empresa</span>
                <p>Haz click para registrar un contacto o empresa en el MINCIT</p>
                <a href="../formularios/registrar.jsp" class="secondary-content"><i class="material-icons">input</i></a>
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle blue">library_add</i>
                <span class="title" style="font-weight: bold;">Registrar entidad adscrita</span>
                <p>Haz click para registrar un entidad en el MINCIT</p>
                <a href="../formularios/entidad.jsp" class="secondary-content"><i class="material-icons">input</i></a>
            </li>
        </ul>

        <div class="card-panel green darken-3 ">
            <span class="white-text">Consulta</span>
        </div>
        <ul class="collection">
            <li class="collection-item avatar">
                <i class="material-icons circle red">search</i>
                <span class="title" style="font-weight: bold;">Consultar contacto</span>
                <p>Haz click para consultar un contacto en el MINCIT</p>
                <a href="../consultas/contacto.jsp" class="secondary-content"><i class="material-icons">input</i></a>
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle green">search</i>
                <span class="title" style="font-weight: bold;">Consultar empresa</span>
                <p>Haz click para consultar un empresa en el MINCIT</p>
                <a href="../consultas/empresa.jsp" class="secondary-content"><i class="material-icons">input</i></a>
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle blue">search</i>
                <span class="title" style="font-weight: bold;">Consultar entidad adscrita</span>
                <p>Haz click para consultar un entidad en el MINCIT</p>
                <a href="../consultas/entidades.jsp" class="secondary-content"><i class="material-icons">input</i></a>
            </li>
        </ul>

    </div>


</div>

<!--
<div class="row">
    <div class="col s12 m6">
        <div class="card">
            <div class="card-image">
                <img src="../images/person.png">
                <span class="card-title">
                    <span class="green-text" style="font-weight: bold;">CONTACTO</span>
                </span>
            </div>
            <div class="card-content">
                <p>Formulario para registrar contacto</p>
            </div>
            <div class="card-action">
                <a href="../formularios/contacto.jsp">Acceder formulario</a>
            </div>
        </div>
    </div>

    <div class="col s12 m6">
        <div class="card">
            <div class="card-image">
                <img src="../images/edifcios.png">
                <span class="card-title">
                    <span class="green-text" style="font-weight: bold;">EMPRESA</span>
                </span>
            </div>
            <div class="card-content">
                <p>Formulario para registrar empresa</p>
            </div>
            <div class="card-action">
                <a href="../formularios/empresa.jsp">Acceder formulario</a>

            </div>
        </div>
    </div>
</div>
-->








<jsp:include page="../plantillas/footer.jsp"/>

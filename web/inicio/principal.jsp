<%-- 
    Document   : principal
    Created on : 5/09/2016, 04:24:13 PM
    Author     : tuto2
--%>

<jsp:include page="../plantillas/header.jsp"/>

<div class="row">

    <div class="col s5">
        <div class="card-panel green darken-3 ">
            <span class="white-text">Registro</span>
        </div>
        <ul class="collection">
            <li class="collection-item avatar">
                <i class="material-icons circle red">library_add</i>
                <span class="title" style="font-weight: bold;">Registrar contacto</span>
                <p>Haz click para registrar un contacto en el MINCIT</p>
                <a href="../formularios/contacto.jsp" class="secondary-content"><i class="material-icons">input</i></a>
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle green">library_add</i>
                <span class="title" style="font-weight: bold;">Registrar empresa</span>
                <p>Haz click para registrar un empresa en el MINCIT</p>
                <a href="../formularios/empresa.jsp" class="secondary-content"><i class="material-icons">input</i></a>
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle blue">library_add</i>
                <span class="title" style="font-weight: bold;">Registrar entidad adscrita</span>
                <p>Haz click para registrar un entidad en el MINCIT</p>
                <a href="../formularios/entidades.jsp" class="secondary-content"><i class="material-icons">input</i></a>
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
    <div class="col s7">
        <div class="card-panel green darken-3 ">
            <span class="white-text">Calendario</span>
        </div>
        <ul class="collection">
            <li class="collection-item avatar">
                <i class="material-icons circle grey">today</i>
                <span class="title" style="font-weight: bold;">Evento 1</span>
                <p>Descripcion del evento a concertar</p>
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle grey">today</i>
                <span class="title" style="font-weight: bold;">Evento 2</span>
                <p>Descripcion del evento a concertar</p>
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle grey">today</i>
                <span class="title" style="font-weight: bold;">Evento 3</span>
                <p>Descripcion del evento a concertar</p>
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle grey">today</i>
                <span class="title" style="font-weight: bold;">Evento 4</span>
                <p>Descripcion del evento a concertar</p>
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle grey">today</i>
                <span class="title" style="font-weight: bold;">Evento 5</span>
                <p>Descripcion del evento a concertar</p>
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle grey">today</i>
                <span class="title" style="font-weight: bold;">Evento 6</span>
                <p>Descripcion del evento a concertar</p>
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

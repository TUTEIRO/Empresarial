<%-- 
    Document   : registrar
    Created on : 29/10/2016, 10:38:14 AM
    Author     : tuto2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%if (session.getAttribute("usuario") == null) {
        System.out.println("usuario");

        response.sendRedirect("../index.jsp");
    }%>
<jsp:include page="../plantillas/header.jsp"/>
<script type="text/javascript" src="js/comienzoRegistro.js"></script>
<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>

<div class="row card-panel  white " id="registro">
    <form class="col s12" name="registrar" id="registrar"  method="post" action="javascript:validarCedula()">
        <div class="container">
            <br></br>
            <div class="input-field col s12 ">
                <i class="material-icons prefix">account_circle</i>
                <input required placeholder="Numero de cedula contacto" id="num_cc" type="number" min="999999"  max="10000000000"class="validate">
                <label for="num_cc">Numero de cedula contacto</label>
            </div>
            <div class="input-field col s12 ">
                <input class="btn waves-effect waves-light" type="submit" name="action" value="Ingresar">


            </div>
            <div id="divError"></div>
             <br></br>
        </div>
    </form>
     <br></br>
</div>


<jsp:include page="../plantillas/footer.jsp"/>

<%-- 
    Document   : Empresa
    Created on : 6/09/2016, 01:48:45 PM
    Author     : tuto2
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%if (session.getAttribute("usuario") == null) {
        System.out.println("usuario");

        response.sendRedirect("../index.jsp");
    }%>
<jsp:include page="../plantillas/header.jsp"/>
<script type="text/javascript" src="js/empresa.js"></script>
<script type="text/javascript" src="js/cambioForm.js"></script>
<script type="text/javascript">


    $(document).ready(function () {

        
        
        $('#seleccion').click(function () {

            var var_name = $("input[name='group1']:checked").val();

            $('#genero').val(var_name);

        });

        $('#seleccion2').click(function () {

            var var_name = $("input[name='group2']:checked").val();

            $('#etnia').val(var_name);

        });

        $('#cons_legal').click(function () {

            var var_name = $("input[name='group7']:checked").val();

            $('#cons_ot').val(var_name);

            if (var_name === 'otras') {

                $('#cons_otros').prop("readonly", false);
            } else {

                $('#cons_otros').prop("readonly", true);
            }

        });

        $('#regis_mer').click(function () {

            var var_name = $("input[name='group5']:checked").val();

            $('#regis_mercan').val(var_name);

            if (var_name === 'si') {

                $('#num_reg_mercantil').prop("readonly", false);
                $('#ano_renovacion').prop("readonly", false);
            } else {

                $('#num_reg_mercantil').prop("readonly", true);
                $('#ano_renovacion').prop("readonly", true);
            }

        });

        $('#contactoBTN').click(function () {
            cambiarForm3();
            cambiarForm("true");

        });

        $('#empresaBTN').click(function () {
            cambiarForm2();
            cambiarForm("false");

        });
        $('#registrarCont').click(function () {
            cambiarForm3();
            cambiarForm("true");

        });

        
    });
</script>


<%--
<div class="row">
    <div class="col s12">
        <ul class="tabs">
            <li class="tab col s6"><a class="active" href="#contacto"><span class="green-text" style="font-weight: bold;">CONTACTO</span></a></li>
            <li class="tab col s6"><a href="#empresa"><span class="green-text" style="font-weight: bold;">EMPRESA</span></a></li>
        </ul>
    </div>
</div>
--%>
<div id="selec" class="row ">
    <a id="contactoBTN" >
        <div   class="col s6 card-panel grey black-text">
            <center>
                <span >
                    Contacto
                </span>
            </center>
        </div>
    </a>
    <a id="empresaBTN">
        <div  class="col s6 card-panel grey lighten-2 black-text">
            <center>
                <span >
                    Empresa
                </span>
            </center>
        </div>
    </a>
</div>
<div id="contacto" class="col s12">
    <jsp:include page="formCon.jsp"/>

    <div class="row">
        <div class="input-field col s12">
            <input id="registrarCont"type="submit" class="waves-effect waves-light modal-trigger btn right" value="Continuar" >
        </div>
    </div>
    <div id="modal3" class="modal">
        <div id="mostrarModal">

        </div>
    </div>
</form>
</div>   

</div>
</form>
</div>
</div>


</div>

</section>



<div id="empresa" class="col s12" style="display: none;  ">
    <jsp:include page="formEmpre.jsp"/>
    <div class="row">
        <div class="input-field col s12">
            <button class="btn waves-effect waves-light" type="submit" name="action">Enviar
                <i class="mdi-content-send right"></i>
            </button>
        </div>
    </div>
</div>

</form>
</div>
</div>

</div>
</div>

</section>

<jsp:include page="../plantillas/footer.jsp"/>
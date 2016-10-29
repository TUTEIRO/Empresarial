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
      
           
        
          
        $('#certificado_sostenibilidad').click(function () {

            var var_name = $("input[name='group11']:checked").val();

            $('#cer_sostenibilidad').val(var_name);

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
        
        
        
         $('#act_internacional').click(function () {

            var var_name = $("input[name='group9']:checked").val();

            $('#actividad_int').val(var_name);

        });
        
         $('#tipo_empresa').click(function () {

            var var_name = $("input[name='group8']:checked").val();

            $('#tipo_emp').val(var_name);

            if (var_name === 'otra') {

                $('#tipo_otra').prop("readonly", false);
            } else {

                $('#tipo_otra').prop("readonly", true);
            }
            
            if(var_name === 'comercial'){
                $('#comercial_ventas_mayor').prop("disabled", false);
                $('#comercial_ventas_menor').prop("disabled", false);
            }else{
                $('#comercial_ventas_mayor').prop("disabled", true);
                $('#comercial_ventas_menor').prop("disabled", true);
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





<div id="empresa" class="col s12" >
    <jsp:include page="formEmpre.jsp"/>
    <div class="row">
        <div class="input-field col s12">
            <input class="btn waves-effect waves-light" type="submit" name="action" value="enviar">
                <i class="mdi-content-send right"></i>
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
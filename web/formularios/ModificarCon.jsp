<%-- 
    Document   : ModifcarCon
    Created on : 12-oct-2016, 22:41:28
    Author     : FARID SANTIAGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../plantillas/header.jsp"/>
<script type="text/javascript" src="js/cargarFormulario.js"></script>
<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="js/cargarFormulario.js"></script>
<script type="text/javascript">
    $(document).ready(function () {


        $('#seleccion').click(function() {
            
            var var_name = $("input[name='group1']:checked").val();
            $('#genero').val(var_name);
            
        });
        
        $('#seleccion2').click(function() {
            
            var var_name = $("input[name='group2']:checked").val();
            $('#etnia').val(var_name);
            
        });
        
        
    });
</script>
<jsp:include page="formConModificar.jsp"/>

<div class="row">
    <div class="col s12">
        <input id="buttoncheck" type="submit" class="waves-effect waves-light btn modal-trigger" href="#modal1" value="Actualizar" >
        
    </div>
</div>
<div id="modal1" class="modal">
    <div id="actualizar">
   
    </div>
</div>
</form>
</div>
</div>
</div>
</div>
</section>      

<jsp:include page="../plantillas/footer.jsp"/>


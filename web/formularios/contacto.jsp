<%-- 
    Document   : contacto
    Created on : 5/09/2016, 04:34:27 PM
    Author     : tuto2
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
<jsp:include page="formCon.jsp"/>

<div class="row">
    <div class="col s12">
        <input id="buttoncheck" type="submit" class="btn center-align green darken-3 right" value="Registrar">
        
    </div>
</div>
</form>
</div>
</div>
</div>
</div>
</section>      

<jsp:include page="../plantillas/footer.jsp"/>

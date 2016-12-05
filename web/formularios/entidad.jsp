<%-- 
    Document   : entidad
    Created on : 5/12/2016, 09:03:47 AM
    Author     : tuto2
--%>

<%@page import="dto.ServicioDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%if (session.getAttribute("usuario") == null) {
        System.out.println("usuario");

        response.sendRedirect("../index.jsp");
    }%>
<jsp:include page="../plantillas/header.jsp"/>
<section id="entidad" class="entidad">
    <form  name="formInicioProyectos" action="Procesar/cargarArchivo.jsp"
           id="formInicioProyectos"  enctype="multipart/form-data" method="post">
        <div class="card-panel  white" >
            <h4><span class="green-text" style="font-weight: bold;">INFORMACIÓN DE ENTIDADES ADSCRITAS</span></h4>

            <div class="row">
                <div class="col s12 ">
                    <div class="row">

                        <div class="row">
                            <div class="input-field col s6">
                                <input  name="nom_entidad"id="nom_entidad" type="text" class="validate">
                                <label for="nom_entidad">Nombre de la entidad</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="nit_entidad"id="nit_entidad" type="text" class="validate">
                                <label for="nit_entidad">Nit</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input name="dir_entidad"id="dir_entidad" type="text" class="validate">
                                <label for="dir_entidad">Dirección de la entidad</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="ciudad_entidad"id="ciudad_entidad" type="text" class="validate">
                                <label for="ciudad_entidad">Ciudad</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input name="tel_fijo_entidad"id="tel_fijo_entidad" type="tel" class="validate">
                                <label for="tel_fijo_entidad">Teléfono fijo</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="tel_movil_entidad" id="tel_movil_entidad" type="tel" class="validate">
                                <label for="tel_movil_entidad">Teléfono móvil</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input name="correo_entidad"id="correo_entidad" type="email" class="validate">
                                <label for="correo_entidad">Correo electrónico</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="sitio_web_entidad"id="sitio_web_entidad" type="text" placeholder="www.example.com" class="validate">
                                <label for="sitio_web_entidad">Sitio web</label>
                            </div>
                        </div>
                        <div class="file-field input-field col s12">
                            <div class="btn">
                                <span>Archivo</span>
                                <input name="file"id="file"type="file" accept="image/jpg,image/png">
                            </div>
                            <div class="file-path-wrapper">
                                <input class="file-path validate" type="text">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col s12">
                                <button  class="waves-effect waves-light btn modal-trigger " href="#modal3">Registrar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="modal3" class="modal">
            <div id="mostrarRegistro">
                <h2><label class="green-text"><center>¡¡Atencion!!</center></label></h2>
                <p>Si continua automaticamente se registraran los datos de la entidad</p>
            </div>
            <div class="modal-footer">
                <button  href="#!" class="waves-effect waves-light btn">Seguir en la ventana actual</button>

                <button type="submit" class="waves-effect waves-light btn">Continuar</button>
            </div>
        </div>
    </form>

</div>

</div>
</div>
</div>
</section>
<script type="text/javascript">
    

    $(document).ready(function () {
        $('.modal-trigger').leanModal();
        
    });
</script>

<jsp:include page="../plantillas/footer.jsp"/>

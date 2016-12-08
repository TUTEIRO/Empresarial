<%-- 
    Document   : mostrarInformacionEntidad
    Created on : 07-dic-2016, 10:26:59
    Author     : FARID SANTIAGO
--%>

<%@page import="dto.ServicioDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.EntidadDTO"%>
<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%if (session.getAttribute("usuario") == null) {
        System.out.println("usuario");

        response.sendRedirect("../index.jsp");
    }%>

<%

    Fachada fachada = new Fachada();
    String nit = request.getParameter("nit");
    ArrayList<EntidadDTO> exito = fachada.consultarEntidad("nit", nit);
    for (EntidadDTO e : exito) {
%>
<jsp:include page="../plantillas/header.jsp"/>
<section id="entidad" class="entidad">
    <form  name="formInfoEntidad"  align="center"
           id="formInfoEntidad" method="post">
        <div class="card-panel  white" >
            <h4><span class="green-text" style="font-weight: bold;">INFORMACIÓN DE ENTIDAD <%=e.getNombre().toUpperCase()%></span></h4>
            <div class="row">
                <div class="col s12 ">
                    <div class="row">
                        <div class="row">
                            <div class="input-field col s6">
                                <input  name="nom_entidad"id="nom_entidad" type="text" class="validate" value="<%=e.getNombre()%>" readonly>
                                <label for="nom_entidad">Nombre de la entidad</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="nit_entidad"id="nit_entidad" type="text" class="validate" value="<%=e.getNit()%>" readonly>
                                <label for="nit_entidad">Nit</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input name="dir_entidad"id="dir_entidad" type="text" class="validate" value="<%=e.getDireccion()%>" readonly>
                                <label for="dir_entidad">Dirección</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="ciudad_entidad"id="ciudad_entidad" type="text" class="validate" value="<%=e.getCiudad()%>" readonly>
                                <label for="ciudad_entidad">Ciudad</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input name="tel_fijo_entidad"id="tel_fijo_entidad" type="tel" class="validate" value="<%=e.getFijo()%>" readonly>
                                <label for="tel_fijo_entidad">Teléfono fijo</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="tel_movil_entidad" id="tel_movil_entidad" type="tel" class="validate" value="<%=e.getCelular()%>" readonly>
                                <label for="tel_movil_entidad">Teléfono móvil</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input name="correo_entidad"id="correo_entidad" type="email" class="validate" value="<%=e.getEmail()%>" readonly>
                                <label for="correo_entidad">Correo electrónico</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="sitio_web_entidad"id="sitio_web_entidad" type="text" value="<%=e.getSitio_web()%>" class="validate" readonly>
                                <label for="sitio_web_entidad">Sitio web</label>
                            </div>
                        </div>
                        <br>
                        <h4><span class="green-text" style="font-weight: bold;">SERVICIOS</span></h4>
                        <div class="row">
                            <div class="col s12">
                                <table class="bordered">
                                    <thead>
                                        <tr>
                                            <th>Nombre del servicio</th>
                                            <th>Ver logros</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            ArrayList<ServicioDTO> servicios = fachada.mostrarServiciosEntidad(e.getNombre());
                                            for (ServicioDTO s : servicios) {
                                        %>
                                        <tr>
                                            <td><%=s.getServicio()%></td>
                                            <td><a href="" class="btn green">Logros</a></td>
                                        </tr>
                                        <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12">
                                <a  class="waves-effect waves-light btn modal-trigger " href="../consultas/entidades.jsp">Regresar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</div>

</div>
</div>
</div>
</section>
<% }%>
<jsp:include page="../plantillas/footer.jsp"/>

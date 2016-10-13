<%-- 
    Document   : formCon
    Created on : 6/09/2016, 11:32:09 AM
    Author     : tuto2
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/cargarFormulario.js"></script>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>


<section id="contacto" class="contacto">
    <div class="card-panel  white" >
        <h4><span class="green-text" style="font-weight: bold;">CONTACTO</span></h4>
      
        <div class="row">
            <div class="col s12 ">
                <div class="row">
                    <form class="col s12" name="registrarFormContacto" id="registrarFormContacto" action="javascript:registrarContacto()" method="post">
                        <div class="row">
                            <div class="input-field col s6">
                                <input required id="first_name" type="text" class="validate">
                                <label for="first_name">Nombres</label>
                            </div>
                            <div class="input-field col s6">
                                <input required id="last_name" type="text" class="validate">
                                <label for="last_name">Apellidos</label>
                            </div>
                        </div>

                        <div class="row" id="seleccion">
                            <div class="input-field col s3">

                                <label>Genero</label> 
                            </div>
                            <div class="input-field col s3">
                                <p>
                                    <input id="masculino" name="group1" type="radio" value="masculino" onchange="" >
                                    <label for="masculino">Masculino</label>
                                </p> 
                            </div>
                            <div class="input-field col s3">
                                <p>
                                    <input id="femenino" name="group1" type="radio" value="femenino"  >
                                    <label for="femenino">Femenino</label>
                                </p> 
                            </div>
                            <div class="input-field col s3">
                                <p>
                                    <input id="lgtbi" name="group1" type="radio" value="lgtbi"  >
                                    <label for="lgtbi">LGTBI</label>
                                </p> 
                            </div>
                            <input hidden="true" name="genero" id="genero" type="text" value="es" class="validate">

                        </div>
                        <div class="row">
                            <div class="input-field col s10">
                                <input required id="cargo" type="text" class="validate">
                                <label for="cargo">Cargo</label>
                            </div>
                            <div class="input-field col s2">
                                <input required id="anos_cargo" name="anos_cargo" type="number" min="0" class="validate">
                                <label for="anos_cargo">Años en cargo</label>
                            </div>
                        </div>


                        <div class="row">
                            <div class="input-field col s8">
                                <input required id="lugar_nac" type="text" class="validate">
                                <label for="lugar_nac">Lugar nacimiento</label>
                            </div>
                            <div class="input-field col s4">
                                <label for="fecha_nac">Fecha nacimiento</label>
                                <input required id ="fecha_nac"type="text" class="datepicker">
                            </div>
                        </div>



                        <div class="row">
                            <div class="input-field col s12">
                                <input required id="num_ced" type="text" class="validate">
                                <label for="num_ced">Numero de cedula</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <select id="niv_estud">
                                    <option value="" disabled selected>--Seleccione una opción--</option>
                                    <option value="primaria">Primaria</option>
                                    <option value="bachiller">Bachiller</option>
                                    <option value="tecnica">Tecnica</option>
                                    <option value="profesional">Profesional</option>
                                    <option value="postgrado">Postgrado</option>
                                    <option value="otros">Otros</option>
                                </select>
                                <label for="niv_estud">Nivel de estudio</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input required id="direccion" type="text" class="validate">
                                <label for="direccion">Direccion</label> 
                            </div>
                        </div>

                        <div class="row">

                            <div class="input-field col s6">
                                <select id="departamento" name="departamento" onchange="javascript:cargarMunicipiosAjax(this)" >
                                    <option value="" disabled selected>Elige una opcion</option>
                                    <% Fachada fachada = new Fachada();
                                        ArrayList<String> lista = fachada.cargarDptos();
                                        for (String d : lista) {
                                    %>
                                    <option value="<%=d%>"><%=d%></option>
                                    <%}
                                    %>
                                </select>
                                <label>Departamento</label>

                            </div>
                            <div id="municipio">
                                <div class="input-field col s6">

                                    <select id="mun" name="mun">
                                        <option value="" disabled selected>Elige una opcion</option>

                                    </select>
                                    <label>Municipio</label> 
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input required id="tel_fijo" type="tel" class="validate">
                                <label for="tel_fijo">Telefono fijo</label> 
                            </div>
                            <div class="input-field col s6">
                                <input required id="tel_cel" type="tel" class="validate">
                                <label for="tel_cel">Telefono celular</label> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input required id="email" type="email" class="validate">
                                <label for="email">E-Mail</label>
                            </div>
                        </div>

                        <div class="row" id="seleccion2">
                            <div class="input-field col s3">

                                <label>Grupo Étnico</label> 
                            </div>
                            <div class="input-field col s3">
                                <p>
                                    <input name="group2" type="radio" id="gitanos" value="2"/>
                                    <label for="gitanos">Rrom(gitanos)</label>
                                </p> 
                            </div>
                            <div class="input-field col s3">
                                <p>
                                    <input name="group2" type="radio" id="indigenas" value="1" />
                                    <label for="indigenas">Indigenas</label>
                                </p> 
                            </div>
                            <div class="input-field col s3">
                                <p>
                                    <input name="group2" type="radio" id="afrocolombianos" value="3"/>
                                    <label for="afrocolombianos">Afrocolombianos</label>
                                </p> 
                            </div>
                            <div class="input-field col s3"></div>
                            <div class="input-field col s3">
                                <p>
                                    <input name="group2" type="radio" id="Raizales" value="4"/>
                                    <label for="Raizales">Raizales</label>
                                </p>
                            </div>
                            <div class="input-field col s3">
                                <p>
                                    <input name="group2" type="radio" id="otro" value="5"/>
                                    <label for="otro">Otro</label>
                                </p>
                            </div>
                       
                        <input hidden="true" name="etnia" id="etnia" type="text" value="es" class="validate">
                         </div>
                        <div class="row">
                            <div class="input-field col s3">
                                <label for="desplazado">Desplazado</label> 
                            </div>
                            <div class="input-field col s3">
                                <div class="switch">
                                    <label>
                                        No
                                        <input type="checkbox" id="desplazado" name="desplazado">
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                            <div class="input-field col s3">
                                <label for=discapacidad"">Discapacidad</label> 
                            </div>
                            <div class="input-field col s3">
                                <div class="switch">
                                    <label>
                                        No
                                        <input type="checkbox" id="discapacidad" name="discapacidad">
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <br></br>




                        <script type="text/javascript" src="js/cargarFormulario.js"></script>
                        <script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>

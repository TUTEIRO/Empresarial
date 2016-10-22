<%-- 
    Document   : formEmpre
    Created on : 6/09/2016, 01:49:34 PM
    Author     : tuto2
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<section id="empresaForm" class="empresa">
    
        <div class="card-panel  white" >
            <h4><span class="green-text" style="font-weight: bold;">EMPRESA</span></h4>

            <div class="row">
                <div class="col s12 ">
                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s6">
                                    <input required id="nombre_empresa" type="text" class="validate">
                                    <label for="nombre_empresa">Nombre de la empresa</label>
                                </div>
                                <div class="input-field col s6">
                                    <input required id="nit" type="text" class="validate">
                                    <label for="nit">Nit</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <input required id="representante" type="text" class="validate">
                                    <label for="representante">Nombre del representante legal</label>
                                </div>
                            </div>

                            <div class="row" id="cons_legal">
                                <div class="input-field col s3">

                                    <label>Constitución legal</label> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group7" type="radio" id="sas" value="sas" checked="checked"/>
                                        <label for="sas">SAS</label>
                                    </p> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group7" type="radio" id="ltda" value="ltda"/>
                                        <label for="ltda">Ltda</label>
                                    </p> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group7" type="radio" id="sAnonima" value="sAnonima"/>
                                        <label for="sAnonima">S. Anónima</label>
                                    </p> 
                                </div>
                                <div class="input-field col s3"></div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group7" type="radio" id="personaN" value="personaN"/>
                                        <label for="personaN">Persona natural</label>
                                    </p>
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group7" type="radio" id="otras" value="otras"/>
                                        <label for="otras">Otras</label>
                                    </p>
                                </div>
                                <div class="input-field col s3">
                                    <input id="cons_otros" type="text" class="" readonly="true" placeholder="¿cual otro?">
                                    
                                </div>
                                <input hidden="true" name="cons_ot" id="cons_ot" type="text" value="sas" class="validate">
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input required id="fecha_constitucion" type="text" class="datepicker">
                                    <label for="fecha_constitucion">Fecha de constitución</label>
                                </div>
                                <div class="input-field col s2">
                                    <label> No de empleados</label>
                                </div>
                                <div class="input-field col s1">
                                    <p>
                                        <input required class="validate" type="number" min="0" id="tc"/>
                                        <label for="tc">TC</label>
                                    </p>
                                </div>
                                <div class="input-field col s1">
                                    <p>
                                        <input required class="validate" type="number" min="0" id="mt"/>
                                        <label for="mt">MT</label>
                                    </p>
                                </div>
                                <div class="input-field col s1">
                                    <p>
                                        <input required class="validate" type="number" min="0" id="directo"/>
                                        <label for="directo">Directo</label>
                                    </p>
                                </div>
                                <div class="input-field col s1">
                                    <p>
                                        <input required class="validate" type="number" min="0" id="indirecto"/>
                                        <label for="indirecto">Indirecto</label>
                                    </p>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input required id="direccion_empresa" type="text" class="validate">
                                    <label for="direccion_empresa">Dirección de la empresa</label>
                                </div>
                                <div class="input-field col s6">
                                    <input required id="ciudad_empresa" type="text" class="validate">
                                    <label for="ciudad_empresa">Ciudad</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input required id="tel_fijo_empresa" type="tel" class="validate">
                                    <label for="tel_fijo_empresa">Teléfono fijo</label>
                                </div>
                                <div class="input-field col s6">
                                    <input required id="tel_movil_empresa" type="tel" class="validate">
                                    <label for="tel_movil_empresa">Teléfono móvil</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input required id="correo_empresa" type="email" class="validate">
                                    <label for="correo_empresa">Correo electrónico</label>
                                </div>
                                <div class="input-field col s6">
                                    <input required id="sitio_web" type="text" placeholder="www.example.com" class="validate">
                                    <label for="sitio_web">Sitio web</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <textarea  required id="servicios" class="materialize-textarea"></textarea>
                                    <label for="servicios">Descripción de servicios que ofrece</label>
                                </div>
                            </div>

                            <div class="row" id="regis_mer">
                                <div class="input-field col s2">
                                    <label>Tiene registro mercantil</label>
                                </div>
                                <div class="input-field col s2">
                                    <p>
                                        <input name="group5" type="radio" id="no" value="no"checked="checked"/>
                                        <label for="no">No</label>
                                    </p>
                                </div>
                                <div class="input-field col s2">
                                    <p>
                                        <input name="group5" type="radio" id="si" value="si"/>
                                        <label for="si">Si</label>
                                    </p>
                                </div>
                                
                                <div class="input-field col s3">
                                    <input id="num_reg_mercantil" type="number" min="0" readonly="true" 
                                           placeholder="Nro. de registro mercantil">
                                    
                                </div>
                                <div class="input-field col s3">
                                    <input id="ano_renovacion" placeholder="Último año de renovación" 
                                           type="number" min="0" size="4"/>
                                    
                                </div>
                                <input hidden="true" name="regis_mercan" id="regis_mercan" type="text" value="no" class="validate">
                            </div>
                             <div class="input-field col s3">
                                <label for="neg_internet">¿Realiza negocios por internet?</label> 
                            </div>
                            <div class="input-field col s3">
                                <div class="switch">
                                    <label>
                                        No
                                        <input type="checkbox" id="neg_internet" name="neg_internet">
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                             <div class="input-field col s3">
                                <label for="empT">¿Es empresa turistica?</label> 
                            </div>
                            <div class="input-field col s3">
                                <div class="switch">
                                <label>
                                    No
                                    <input type="checkbox" id="empT" onclick="cargarEmpresaT()">
                                    <span class="lever"></span>
                                    Si
                                </label>
                            </div>
                            </div>
                            <br><br><br><br>
                            <div id="formEmpresaT">
                                
                            </div>

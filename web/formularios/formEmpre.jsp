<%-- 
    Document   : formEmpre
    Created on : 6/09/2016, 01:49:34 PM
    Author     : tuto2
--%>

<section id="empresa" class="empresa">
    
        <div class="card-panel  white" >
            <h4><span class="green-text" style="font-weight: bold;">EMPRESA</span></h4>

            <div class="row">
                <div class="col s12 ">
                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="nombre_empresa" type="text" class="validate">
                                    <label for="nombre_empresa">Nombre de la empresa</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="nit" type="text" class="validate">
                                    <label for="nit">Nit</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="representante" type="text" class="validate">
                                    <label for="representante">Nombre del representante legal</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s3">

                                    <label>Constitución legal</label> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group3" type="radio" id="sas" />
                                        <label for="sas">SAS</label>
                                    </p> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group3" type="radio" id="ltda" />
                                        <label for="ltda">Ltda</label>
                                    </p> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group3" type="radio" id="sAnonima" />
                                        <label for="sAnonima">S. Anónima</label>
                                    </p> 
                                </div>
                                <div class="input-field col s3"></div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group3" type="radio" id="personaN" />
                                        <label for="personaN">Persona natural</label>
                                    </p>
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input class="validate" type="text" id="otras" />
                                        <label for="otras">Otras</label>
                                    </p>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="fecha_constitucion" type="text" class="datepicker">
                                    <label for="fecha_constitucion">Fecha de constitución</label>
                                </div>
                                <div class="input-field col s2">
                                    <label> No de empleados</label>
                                </div>
                                <div class="input-field col s1">
                                    <p>
                                        <input class="validate" type="number" id="tc"/>
                                        <label for="tc">TC</label>
                                    </p>
                                </div>
                                <div class="input-field col s1">
                                    <p>
                                        <input class="validate" type="number" id="mt"/>
                                        <label for="mt">MT</label>
                                    </p>
                                </div>
                                <div class="input-field col s1">
                                    <p>
                                        <input class="validate" type="number" id="directo"/>
                                        <label for="directo">Directo</label>
                                    </p>
                                </div>
                                <div class="input-field col s1">
                                    <p>
                                        <input class="validate" type="number" id="indirecto"/>
                                        <label for="indirecto">Indirecto</label>
                                    </p>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="direccion_empresa" type="text" class="validate">
                                    <label for="direccion_empresa">Dirección de la empresa</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="ciudad_empresa" type="text" class="validate">
                                    <label for="ciudad_empresa">Ciudad</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="tel_fijo_empresa" type="tel" class="validate">
                                    <label for="tel_fijo_empresa">Teléfono fijo</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="tel_movil_empresa" type="tel" class="validate">
                                    <label for="tel_movil_empresa">Teléfono móvil</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="correo_empresa" type="email" class="validate">
                                    <label for="correo_empresa">Correo electrónico</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="sitio_web" type="text" placeholder="www.example.com" class="validate">
                                    <label for="sitio_web">Sitio web</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <textarea id="servicios" class="materialize-textarea"></textarea>
                                    <label for="servicios">Descripción de servicios que ofrece</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s2">
                                    <label>Tiene registro mercantil</label>
                                </div>
                                <div class="input-field col s2">
                                    <p>
                                        <input name="group5" type="radio" id="si"/>
                                        <label for="si">Si</label>
                                    </p>
                                </div>
                                <div class="input-field col s2">
                                    <p>
                                        <input name="group5" type="radio" id="no"/>
                                        <label for="si">No</label>
                                    </p>
                                </div>
                                <div class="input-field col s6">
                                    <input id="num_reg_mercantil" type="number" class="validate">
                                    <label for="num_reg_mercantil">Nro. de registro mercantil</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="año_renovacion" type="text" class="validate"/>
                                    <label for="año_renovacion">¿Último año de renovación?</label>
                                </div>
                            </div>

                            <div class="switch">
                                <h6> ¿Es empresa turistica?</h6>
                                <label>
                                    No
                                    <input type="checkbox">
                                    <span class="lever"></span>
                                    Si
                                </label>
                            </div>
   
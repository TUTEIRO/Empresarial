<%-- 
    Document   : formCon
    Created on : 6/09/2016, 11:32:09 AM
    Author     : tuto2
--%>

<section id="contacto" class="contacto">
    <div class="container">
        <div class="card-panel  white" >
            <h4><span class="green-text" style="font-weight: bold;">CONTACTO</span></h4>

            <div class="row">
                <div class="col s12 ">
                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="first_name" type="text" class="validate">
                                    <label for="first_name">Nombres</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="last_name" type="text" class="validate">
                                    <label for="last_name">Apellidos</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s3">

                                    <label for="">Genero</label> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group1" type="radio" id="masculi" />
                                        <label for="masculi">Masculino</label>
                                    </p> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group1" type="radio" id="femeni" />
                                        <label for="femeni">Femenino</label>
                                    </p> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group1" type="radio" id="lgtbi" />
                                        <label for="lgtbi">LGTBI</label>
                                    </p> 
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s10">
                                    <input id="cargo" type="text" class="validate">
                                    <label for="cargo">Cargo</label>
                                </div>
                                <div class="input-field col s2">
                                    <input id="anos_cargo" type="number" class="validate">
                                    <label for="anos_cargo">Años en cargo</label>
                                </div>
                            </div>


                            <div class="row">
                                <div class="input-field col s8">
                                    <input id="lugar_nac" type="text" class="validate">
                                    <label for="lugar_nac">Lugar nacimiento</label>
                                </div>
                                <div class="input-field col s4">
                                    <label for="fecha_nac">Fecha nacimiento</label>
                                    <input id ="fecha_nac"type="text" class="datepicker">
                                </div>
                            </div>



                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="num_ced" type="number" class="validate">
                                    <label for="num_ced">Numero de cedula</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <select>
                                        <option value="" disable selected>Seleccione una opcion</option>
                                        <option value="1">Primaria</option>
                                        <option value="2">Bachiller</option>
                                        <option value="3">Tecnica</option>
                                        <option value="4">Profesional</option>
                                        <option value="5">Postgrado</option>
                                        <option value="6">Otros</option>
                                    </select>
                                    <label for="niv_estud">Nivel de estudio</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="direccion" type="text" class="validate">
                                    <label for="direccion">Direccion</label> 
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="ciudad" type="text" class="validate">
                                    <label for="ciudad">Ciudad</label> 
                                </div>
                                <div class="input-field col s6">
                                    <input id="departamento" type="text" class="validate">
                                    <label for="departamento">Departamento</label> 
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="tel_fijo" type="text" class="validate">
                                    <label for="tel_fijo">Telefono fijo</label> 
                                </div>
                                <div class="input-field col s6">
                                    <input id="tel_cel" type="text" class="validate">
                                    <label for="tel_cel">Telefono celular</label> 
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="email" type="email" class="validate">
                                    <label for="email">E-Mail</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s2">

                                    <label for="">Grupo etnico</label> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group2" type="radio" id="gitanos" />
                                        <label for="gitanos">Rrom(Gitanos)</label>
                                    </p> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group2" type="radio" id="indigenas" />
                                        <label for="indigenas">Indigenas</label>
                                    </p> 
                                </div>
                                <div class="input-field col s4">
                                    <p>
                                        <input name="group2" type="radio" id="afro" />
                                        <label for="afro">Afrocolombianos</label>
                                    </p> 
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s2">

                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group2" type="radio" id="raizales" />
                                        <label for="raizales">Raizales</label>
                                    </p> 
                                </div>
                                <div class="input-field col s3">
                                    <p>
                                        <input name="group2" type="radio" id="otro" />
                                        <label for="otro">Otro</label>
                                    </p> 
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s3">
                                    <label for="desplazado">Desplazado</label> 
                                </div>
                                <div class="input-field col s3">
                                    <div class="switch">
                                        <label>
                                            No
                                            <input type="checkbox">
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
                                            <input type="checkbox">
                                            <span class="lever"></span>
                                            Si
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <br></br>
                                
                            
                            <div class="row">
                                <div class="input-field col s12">
                                    <button class="btn waves-effect waves-light" type="submit" name="action">Enviar
                                        <i class="mdi-content-send right"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

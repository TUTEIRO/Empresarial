<%-- 
    Document   : contacto
    Created on : 5/09/2016, 04:34:27 PM
    Author     : tuto2
--%>

<jsp:include page="../plantillas/header.jsp"/>


<section id="contacto" class="contacto">
    <div class="container">
        <div class="card-panel  white" >
            <h4>contacto</h4>

            <div class="row">
                <div class="col s12 ">
                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="mdi-action-account-circle prefix"></i>
                                    <input id="first_name" type="text" class="validate">
                                    <label for="first_name">Nombres</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="last_name" type="text" class="validate">
                                    <label for="last_name">Apellidos</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s10">
                                    <i class="mdi-action-account-circle prefix"></i>
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
                                    <i class="mdi-action-account-circle prefix"></i>
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
                                    <i class="mdi-communication-email prefix"></i>
                                    <input id="email" type="email" class="validate">
                                    <label for="email">E-Mail</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="mdi-communication-comment prefix"></i>
                                    <textarea id="mensaje" class="materialize-textarea" required></textarea>
                                    <label for="mensaje">Mensaje</label>
                                </div>
                            </div>

                            <button class="btn waves-effect waves-light" type="submit" name="action">Enviar
                                <i class="mdi-content-send right"></i>
                            </button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
</body>

</html>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->


<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="">
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="../materialize/css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script type="text/javascript" src="../materialize/js/jquery-3.1.0.js"></script>
        <script type="text/javascript" src="../materialize/js/materialize.min.js"></script>
       
        <script type="text/javascript" src="js/login.js"></script>

    </head>

    <script language="javascript">

        $(document).ready(function () {

            $('select').material_select();

            $(".button-collapse").sideNav();

            $(document).on('change', function (e) {
                $('select').material_select();
            });
            $('select').on('contentChanged', function () {
                // re-initialize (update)
                $(this).material_select();
            });

        });
    </script>
    <body background="../images/main-bg.png">
        <br></br>
        <br></br>

        <div class="container ">
            <div class="container white z-depth-5" style="background-image: url(../images/bgbody.jpg)">
                <br></br>
                <div class="container">
                    <div class="row">
                        <form class="col s12" method="post" name="login" id="login">
                            <div class="row">
                                <div class="input-field col s12 ">
                                    <img src="../images/logoMinisterio.png"/>
                                </div>

                                <div class="input-field col s12 ">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input placeholder="Usuario" id="usuario" type="text" class="validate ">
                                    <label for="usuario">Usuario</label>

                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">vpn_key</i>
                                    <input placeholder="Contraseña" id="contraseña" type="password" class="validate ">
                                    <label for="contraseña">Contraseña</label>

                                </div>
                                <div class="row">
                                    <div class="input-field col s12">

                                        <i class="material-icons prefix">recent_actors</i>
                                        <select id="tipo_usuario">
                                            <option value="" disabled selected>--Seleccione una opción--</option>
                                            <option value="administrador">Administrador</option>
                                            <option value="empresa">Empresa</option>
                                        </select>
                                        <label for="tipo_usuario">Tipo usuario</label>
                                    </div>
                                </div>
                                <div class="input-field col s12 ">
                                    <button type="button" class="btn  btn-success" onclick="validarUsuario();"
                                            name="ingresar" id="ingresar" value="Ingresar" />Ingresar</button>


                                </div>
                            </div>
                        </form>
                        <label id="divError"></label>
                    </div>
                </div>
                <br></br>
            </div>
    </body>




    
</html>


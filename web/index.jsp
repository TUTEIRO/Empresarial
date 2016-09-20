<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->


<!DOCTYPE html>
<html>
    <head>

        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script type="text/javascript" src="materialize/js/jquery-3.1.0.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>

    </head>

    <body background="images/main-bg.png">
        <br></br>
        <br></br>

        <div class="container ">
            <div class="container white z-depth-5" style="background-image: url(images/bgbody.jpg)">
                <br></br>
                <div class="container">
                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12 ">
                                    <img src="images/logoMinisterio.png"/>
                                </div>
                                <div class="input-field col s12 ">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input placeholder="Usuario" id="usuario" type="text" class="validate white-text">
                                    <label for="usuario">Usuario</label>

                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">vpn_key</i>
                                    <input placeholder="Contraseña" id="contraseña" type="password" class="validate white-text">
                                    <label for="contraseña">Contraseña</label>

                                </div>
                                <div class="input-field col s12 ">
                                    <a class="btn" type="submit" name="" href="inicio/principal.jsp">Iniciar sesion
                                        <i class="mdi-content-send center"></i></a>

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    </body>




    <!--   <meta http-equiv="Refresh" content="1;url=inicio/principal.jsp"/>
    -->
</html>


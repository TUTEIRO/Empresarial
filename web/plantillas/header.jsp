<%-- 
    Document   : header
    Created on : 3/09/2016, 11:13:50 AM
    Author     : tuto2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="../materialize/css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script type="text/javascript" src="../materialize/js/jquery-3.1.0.js"></script>
        <script type="text/javascript" src="../materialize/js/materialize.min.js"></script>
        <script language="javascript">

            $(document).ready(function () {
                $('.datepicker').pickadate({
                    selectMonths: true, // Creates a dropdown to control month
                    selectYears: 15, // Creates a dropdown of 15 years to control year
                    format: 'dd-mm-yyyy',
                    labelMonthNext: 'Mes siguiente',
                    labelMonthPrev: 'Mes anterior',
                    labelMonthSelect: 'Seleccionar mes',
                    labelYearSelect: 'Seleccionar año',
                    monthsFull: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                    monthsShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
                    weekdaysFull: ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'],
                    weekdaysShort: ['Dom', 'Lun', 'Mts', 'Mie', 'Jue', 'Vie', 'Sab'],
                    weekdaysLetter: ['S', 'M', 'T', 'W', 'T', 'F', 'S'],
                    today: 'Hoy',
                    clear: 'Limpiar',
                    close: 'Cerrar'
                });

                $('select').material_select();

            });




        </script> 
    </head>

    <body background="../images/main-bg.png">


        <div class="container">
            <div class="imagen" style="width:100%;"> 
                <a href="../inicio/principal.jsp">
                    <img src="../images/banner.png"alt="" style="max-width:100%;" >
                </a>
            </div>

            <ul id="dropdown1" class="dropdown-content">
                <li><a href="../formularios/contacto.jsp">Contacto</a></li>
                <li class="divider"></li>
                <li><a href="../formularios/empresa.jsp">Empresa</a></li>
                <li class="divider"></li>
                <li><a href="#!">Entidades adscritas</a></li>
            </ul>

            <ul id="dropdown2" class="dropdown-content">
                <li><a href="#!">Contacto</a></li>
                <li class="divider"></li>
                <li><a href="#!">Empresa</a></li>
                <li class="divider"></li>
                <li><a href="#!">Entidades adscritas</a></li>
            </ul>

            <ul id="dropdown3" class="dropdown-content">
                <li><a href="#!">Contacto</a></li>
                <li class="divider"></li>
                <li><a href="#!">Empresa</a></li>
                <li class="divider"></li>
                <li><a href="#!">Entidades adscritas</a></li>
            </ul>

            <nav>

                <div class="nav-wrapper green darken-3">
                    <ul class="hide-on-med-and-down"> 
                        <div class="row">
                            <div class=" col s4">
                                <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Registro<i class="material-icons right">library_add</i></a></li>
                            </div>
                            <div class="col s4">
                                <li><a class="dropdown-button" href="#!" data-activates="dropdown2">Consultar<i class="material-icons right">search</i></a></li>
                            </div>
                            <div class="col s4">
                                <li><a class="dropdown-button" href="#!" data-activates="dropdown3">Editar<i class="material-icons right">mode_edit</i></a></li>
                            </div>
                        </div>
                    </ul>
                </div>
            </nav>

            


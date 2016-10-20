<%-- 
    Document   : header
    Created on : 3/09/2016, 11:13:50 AM
    Author     : tuto2
--%>
<%request.setCharacterEncoding("UTF-8");%>
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
                    selectYears: 99,
                    
                    max: true,
                    closeOnSelect: true,
                    
                    format: 'yyyy-mm-dd',
                    labelMonthNext: 'Mes siguiente',
                    labelMonthPrev: 'Mes anterior',
                    labelMonthSelect: 'Seleccionar mes',
                    labelYearSelect: 'Seleccionar año',
                    monthsFull: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                    monthsShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
                    weekdaysFull: ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'],
                    weekdaysShort: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
                    weekdaysLetter: [ 'D', 'L', 'M', 'X', 'J', 'V', 'S' ],
                    today: 'Hoy',
                    clear: 'Limpiar',
                    close: 'Cerrar',
                    firstDay: true
                });

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
    </head>

    <%

        if (session.getAttribute("usuario") == null) {
            System.out.println("usuario");

    %> <META HTTP-EQUIV="REFRESH" CONTENT="1;URL=../index.jsp"> <%                   response.sendRedirect("../index.jsp");
        }
    %>
    <body background="../images/main-bg.png">


        <div class="container">
            <div class="imagen" style="width:100%;" style="position: relative; display:block; overflow: hidden; margin: auto;"> 
                <a href="../inicio/principal.jsp">
                    <img src="../images/banner.png" alt="" style="max-width:100%;" alt='' >
                </a>
                <a href="../index.jsp">
                    <img src="../images/logout.png" title='Cerrar sesion' style='position:absolute; top:35px; right:230px; width: 40px' title='HOJAS' alt=''/>
                </a>
            </div>

            <ul id="dropdown1" class="dropdown-content green darken-4" >
                <li><a href="../formularios/contacto.jsp"><i class="tiny material-icons">perm_identity</i><span class="white-text" >Contacto</span></a></li>
                <li class="divider"></li>
                <li><a href="../formularios/empresa.jsp"><i class="tiny material-icons">business</i><span class="white-text" >Empresa</span></a></li>
                <li class="divider"></li>
                <li><a href="../formularios/entidades.jsp"><i class="tiny material-icons">store</i><span class="white-text" whidt="100%">Entidades adscritas</span></a></li>
            </ul>

            <ul id="dropdown2" class="dropdown-content green darken-4" >
                <li><a href="../consultas/contacto.jsp"><i class="tiny material-icons">perm_identity</i><span class="white-text" >Contacto</span></a></li>
                <li class="divider"></li>
                <li><a href="../consultas/empresa.jsp"><i class="tiny material-icons">business</i><span class="white-text" >Empresa</span></a></li>
                <li class="divider"></li>
                <li><a href="../consultas/entidades.jsp"><i class="tiny material-icons">store</i><span class="white-text" >Entidades adscritas</span></a></li>
            </ul>



            <nav>

                <div class="nav-wrapper green darken-3">

                    <a href="../inicio/principal.jsp" class="brand-logo">MINCIT<i class="material-icons left">business</i></a>
                    <ul class="right hide-on-med-and-down"> 

                        <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Registrar
                                <i class="material-icons right">library_add</i></a></li>

                        <li><a class="dropdown-button" href="#!" data-activates="dropdown2">Consultar
                                <i class="material-icons right">search</i></a></li>
                    </ul>
                </div>
            </nav>




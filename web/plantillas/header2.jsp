<%-- 
    Document   : header2
    Created on : 21-nov-2016, 11:22:55
    Author     : FARID SANTIAGO
--%>


<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");%>
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
                    weekdaysLetter: ['D', 'L', 'M', 'X', 'J', 'V', 'S'],
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

        
    %>
    <body background="../images/main-bg.png">


        <div class="container">
             
          
                    <img src="../images/banner.png" alt="" style="max-width:100%;" alt='' >
             
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

                    <center><a class="brand-logo center">Logros</a></center>
                    
                </div>
            </nav>





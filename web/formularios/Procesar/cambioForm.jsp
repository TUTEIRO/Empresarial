<%-- 
    Document   : cambioForm
    Created on : 20/10/2016, 05:01:46 PM
    Author     : tuto2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  String cambio = request.getParameter("cambio");
    System.out.println(cambio);
    if (cambio.equals("true")) {%>
<a id="contactoBTN" >
    <div   class="col s6 card-panel grey black-text">
        <center>
            <span >
                Contacto
            </span>
        </center>
    </div>
</a>
<a id="empresaBTN">
    <div  class="col s6 card-panel grey lighten-2 black-text">
        <center>
            <span >
                Empresa
            </span>
        </center>
    </div>
</a>

<%
} else {%>
<a id="contactoBTN" >
    <div   class="col s6 card-panel grey lighten-2 black-text">
        <center>
            <span >
                Contacto
            </span>
        </center>
    </div>
</a>
<a id="empresaBTN">
    <div  class="col s6 card-panel grey  black-text">
        <center>
            <span >
                Empresa
            </span>
        </center>
    </div>
</a>
<%
    }%>
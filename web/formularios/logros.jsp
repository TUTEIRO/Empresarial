<%-- 
    Document   : logros
    Created on : 19-nov-2016, 11:58:58
    Author     : FARID SANTIAGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="../plantillas/header2.jsp"/>
<%
    String servicio = request.getParameter("servicio");
%>
<section id="logros" class="logros">
    <div class="card-panel white">
        <h4><span class="green-text" style="font-weight: bold;">SERVICIO:  <%=servicio%></span></h4>
    </div>
    
</section>














<jsp:include page="../plantillas/footer.jsp"/>
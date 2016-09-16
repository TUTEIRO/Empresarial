<%-- 
    Document   : cargarEmpresaTuristica
    Created on : 16-sep-2016, 18:19:10
    Author     : FARID SANTIAGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String empresaT = request.getParameter("empresaTuristica");
    System.out.println(empresaT);
    if(empresaT.equals("on1")){
%>   
   <jsp:include page="../formEmpTurist.jsp"/> 
   <%} else { %>
   <jsp:include page="vacio.jsp"/>
    <%}%>
  


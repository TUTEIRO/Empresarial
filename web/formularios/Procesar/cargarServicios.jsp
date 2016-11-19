<%-- 
    Document   : cargarServicios
    Created on : 19-nov-2016, 11:28:34
    Author     : FARID SANTIAGO
--%>

<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  
   
    Fachada fachada = new Fachada();
    if(!request.getParameter("servicioText").isEmpty() && request.getParameter("servicioSelect").isEmpty()){
        
        String servicioText = request.getParameter("servicioText");
        fachada.crearServicio(servicioText);
     
%>
<tr>
    <td><%=servicioText%></td>
    <td><a class="btn waves-effect waves-light green" href="javascript:abrir('logros.jsp?servicio=<%=servicioText%>')">Logros</a></td>
</tr>

<%}else if(request.getParameter("servicioText").isEmpty() && !request.getParameter("servicioSelect").isEmpty()){
        String servicioSelect = request.getParameter("servicioSelect");
    %>

<tr>
    <td><%=servicioSelect%></td>
    <td><a class="btn waves-effect waves-light green" href="javascript:abrir('logros.jsp?servicio=<%=servicioSelect%>')">Logros</a></td>
</tr>
<%}else{
    String servicioText2 = request.getParameter("servicioText");
    String servicioSelect2 = request.getParameter("servicioSelect");
    fachada.crearServicio(servicioText2);
%><tr>
    <td><%=servicioText2%></td>
    <td><a class="btn waves-effect waves-light green" href="javascript:abrir('logros.jsp?servicio=<%=servicioText2%>')">Logros</a></td>
</tr>
<tr>
    <td><%=servicioSelect2%></td>
    <td><a class="btn waves-effect waves-light green" href="javascript:abrir('logros.jsp?servicio=<%=servicioSelect2%>')">Logros</a></td>
</tr>
<%}%>
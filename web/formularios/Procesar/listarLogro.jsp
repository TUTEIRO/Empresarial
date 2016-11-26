<%-- 
    Document   : listarLogro
    Created on : 26-nov-2016, 11:14:29
    Author     : FARID SANTIAGO
--%>

<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Fachada fachada = new Fachada();
    if(!request.getParameter("logroText").isEmpty() && request.getParameter("logroSelect").isEmpty()){
        
        String logroText = request.getParameter("logroText");
        fachada.crearLogro(logroText);
    
%>
<tr>
    <td><%=logroText%></td>
</tr>
<%}else if(request.getParameter("logroText").isEmpty() && !request.getParameter("logroSelect").isEmpty()){
        String logroSelect = request.getParameter("logroSelect");
 %>
 <tr>
     <td><%=logroSelect%></td>
 </tr>
 <%}else{
    String logroText2 = request.getParameter("logroText");
    String logroSelect2 = request.getParameter("logroSelect");
    fachada.crearLogro(logroText2);
%> <tr>
     <td><%=logroText2%></td>
 </tr>
  <tr>
     <td><%=logroSelect2%></td>
 </tr>
 <%}%>
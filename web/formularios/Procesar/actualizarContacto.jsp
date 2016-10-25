<%-- 
    Document   : actualizarContacto
    Created on : 16-oct-2016, 23:39:47
    Author     : FARID SANTIAGO
--%>

<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String cc = request.getParameter("cc");
        String cargo = request.getParameter("cargo");       
        String nivel_estudio = request.getParameter("nivel_estudio");
        String direccion = request.getParameter("direccion");
        String ciudad = request.getParameter("ciudad");     
        String dpto = request.getParameter("dpto");
        String celular = request.getParameter("celular");
        String fijo = request.getParameter("fijo");
        String email = request.getParameter("email");
        String antiguedad = request.getParameter("antiguedad");
        int ant = Integer.parseInt(antiguedad);
        Fachada fachada = new Fachada();
        boolean exito = fachada.editarContacto(cc, nombres, apellidos, cargo, ant, nivel_estudio, dpto, ciudad, direccion, fijo, celular, email);
        
        if(exito){
%>
 <div class="modal-content">
     <h2><label class="green-text"><center>¡¡CONTACTO MODIFICADO CON EXITO!!</center></label></h2>
      <p>El contacto se ha actualizado satifactoriamente en la base de datos</p>
    </div>
    <div class="modal-footer">
      <a href="../inicio/principal.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Volver al inicio</a>
       <a href="../consultas/contacto.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Continuar en consulta</a>
    </div>


<%
        }else{
            
  %><div class="modal-content">
     <h2><label class="green-text"><center>¡¡MODIFICACION ERRONEA!!</center></label></h2>
      <p>Ha ocurrido un errror a la hora de actualizar el contacto. ¡¡fallo de conexión a la base de datos !!</p>
    </div>
    <div class="modal-footer">
        <a href="../inicio/principal.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Volver al inicio</a>
      <a href="../consultas/contacto.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Continuar en consulta</a>
    </div>
  
  <%
        }
            %>

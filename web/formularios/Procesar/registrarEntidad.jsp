<%-- 
    Document   : registrarEntidad
    Created on : 26/11/2016, 09:44:00 AM
    Author     : tuto2
--%>
<%@page import="facade.Fachada"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Hashtable"%>
<%@page import="javazoom.upload.MultipartFormDataRequest"%>
<%@page import="javazoom.upload.UploadFile"%>
<%@page import="javazoom.upload.UploadBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String nueva = "";
String ruta2 = getServletContext().getRealPath("/");
ruta2 += "logos";
    UploadBean upBean = new UploadBean();
    UploadFile file = null;
    upBean.setFolderstore(ruta2);
    boolean msg = false;
    String nit = "";
    String nombre = "";
    String direccion = "";
    String ciudad = "";
    String tel_fijo = "";
    String tel_mov = "";
    String url_web = "";
    String mail = "";
    System.out.println("hello");
    
    
    Fachada fachada = new Fachada();
    System.out.println(request);

    if (!MultipartFormDataRequest.isMultipartFormData(request)) {
        System.out.println("hello2");
        msg = false;

    } else {

        MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);

        Hashtable files = mrequest.getFiles();
        System.out.println("hello");
        nit = mrequest.getParameter("nit_entidad");
        nombre = mrequest.getParameter("nom_entidad");
        direccion = mrequest.getParameter("direccion");
        ciudad = mrequest.getParameter("ciudad");
        tel_fijo = mrequest.getParameter("tel_fijo");
        tel_mov = mrequest.getParameter("tel_mov");
        url_web = mrequest.getParameter("url_web");
        mail = mrequest.getParameter("mail");
        

        
        if ((files != null) && (!files.isEmpty())) {

            file = (UploadFile) files.get("file1");

            if (file == null) {

                msg = true;
            }
            if (file.getFileName() != null) {
                File filess = new File(ruta2 + "/" + nombre + ".jpg");

                filess.delete();
                file.setFileName(nombre + ".jpg");
                upBean.store(mrequest, "file1");
                nueva="../logos/"+nombre+".jpg";
                System.out.println(nueva);
                msg = fachada.registrarEntidad(nit, nombre, direccion,ciudad,tel_fijo,tel_mov,url_web,mail, nueva);
                System.out.println(ruta2);
            }

        } else {
            msg = false;
        }

    } if(msg){
    %><div class="modal-content">
     <h2><label class="blue-text"><center>¡¡REGISTRO EXITOSO!!</center></label></h2>
      <p>La entidad se ha registrado satifactoriamente en la base de datos</p>
    </div>
    <div class="modal-footer">
       <a href="registrarHabitacion.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Continuar</a>
    </div>


<%
        }else{
            
  %><div class="modal-content">
     <h2><label class="blue-text"><center>¡¡REGISTRO FALLIDO!!</center></label></h2>
      <p>Ha ocurrido un errror a la hora de registrar la entidad. Puede ser fallo de conexión a la base de datos o la habitación con su id ya existe en la base de datos, si es esta por favor verifque la id</p>
    </div>
    <div class="modal-footer">
      <a href="registrarHabitacion.jsp" class=" modal-action modal-close waves-effect waves-green btn-flat">Continuar</a>
    </div>
  
  <%
        }
            %>

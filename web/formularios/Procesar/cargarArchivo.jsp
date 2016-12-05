<%-- 
    Document   : cargarArchivo
    Created on : 5/12/2016, 09:13:41 AM
    Author     : tuto2
--%>

<%@page import="facade.Fachada"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String url_imagen = null;
    
    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    String nombre = null;
    String nit = null;
    String direccion = null;
    String ciudad = null;
    String fijo = null;
    String celular = null;
    String email = null;
    String sitioWeb = null;
    String rutaServer = getServletContext().getRealPath("/");
    rutaServer += "/logos/";
    // req es la HttpServletRequest que recibimos del formulario.
    // Los items obtenidos serán cada uno de los campos del formulario,
    // tanto campos normales como ficheros subidos.
    List items = upload.parseRequest(request);
    // Se recorren todos los items, que son de tipo FileItem
    for (Object item : items) {
        FileItem uploaded = (FileItem) item;
        // Hay que comprobar si es un campo de formulario. Si no lo es, se guarda el fichero
        // subido donde nos interese
        if (!uploaded.isFormField()) {
            // No es campo de formulario, guardamos el fichero en algún sitio
            url_imagen = "/logos/" + uploaded.getName();
            File fichero = new File(rutaServer, uploaded.getName());
            uploaded.write(fichero);
        } else {
            // es un campo de formulario, podemos obtener clave y valor
            String key = uploaded.getFieldName();
            out.println(key);
            String valor = uploaded.getString();
            out.println(valor);

            if (key.equalsIgnoreCase("nom_entidad")) {
                nombre = valor;
            } else if (key.equalsIgnoreCase("nit_entidad")) {
                nit = valor;
            } else if (key.equalsIgnoreCase("dir_entidad")) {
                direccion = valor;
            } else if (key.equalsIgnoreCase("ciudad_entidad")) {
                ciudad = valor;
            }else if (key.equalsIgnoreCase("tel_fijo_entidad")) {
                fijo = valor;
            }else if (key.equalsIgnoreCase("tel_movil_entidad")) {
                celular = valor;
            }else if (key.equalsIgnoreCase("correo_entidad")) {
                email = valor;
            }else if (key.equalsIgnoreCase("sitio_web_entidad")) {
                sitioWeb = valor;
            }
            
        }
    }
    Fachada fachada = new Fachada();

    boolean exito = fachada.registrarEntidad(nombre, nit, direccion, ciudad, fijo, celular, email, sitioWeb);

    String resp = "";
    if (exito) {
        resp = "S";
        response.sendRedirect("../serviciosEntidad.jsp?nombre="+nombre);
    } else {
        resp = "N";
    }
%>

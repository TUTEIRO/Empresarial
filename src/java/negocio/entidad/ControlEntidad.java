/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.entidad;


import dao.EntidadDAO;
import dto.EntidadDTO;
import java.util.ArrayList;

/**
 *
 * @author quagg
 */
public class ControlEntidad {
    
    public boolean registrarEntidad(String nombre, String nit, String direccion, String ciudad, String fijo, String celular, String email, String sitio_web, String url_imagen) throws Exception{
        EntidadDAO dao = new EntidadDAO();
        EntidadDTO entidad = new EntidadDTO(nombre, nit, direccion, ciudad, fijo, celular, email, sitio_web, url_imagen);
        return dao.registrarEntidad(entidad);
    }
    
     public ArrayList<EntidadDTO> consultarEntidad(String tipo, String dato) throws Exception{
        EntidadDAO dao = new EntidadDAO();
        return dao.consultarEntidad(dato, tipo);
    }
}

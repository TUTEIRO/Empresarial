/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.contacto;

import dao.ContactoDAO;
import dto.ContactoDTO;

/**
 *
 * @author quagg
 */
public class ControlContacto {
    
    
    public boolean registrarContacto(String nombres, String apellidos, String cc, String cargo, String lugar_nto, String fecha_nto, String nivel_estudio, String direccion, String ciudad, String dpto, String celular, String fijo, String email, String genero, String etnia, String discapacidad, int antiguedad_cargo, boolean condicion_desplazado) throws Exception{
        ContactoDAO dao = new ContactoDAO();
        ContactoDTO contacto = new ContactoDTO(nombres, apellidos, cc, cargo, lugar_nto, fecha_nto, nivel_estudio, direccion, ciudad, dpto, celular, fijo, email, genero, etnia, discapacidad, antiguedad_cargo, condicion_desplazado);
        return dao.registrarContacto(contacto);
    }
    
    public ContactoDTO consultarContacto(String tipo, String dato) throws Exception{
        ContactoDAO dao = new ContactoDAO();
        return dao.consultarContacto(tipo, dato);
    }
    
}

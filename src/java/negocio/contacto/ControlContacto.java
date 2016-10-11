/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.contacto;

import dao.ContactoDAO;
import dto.ContactoDTO;
import java.util.ArrayList;

/**
 *
 * @author quagg
 */
public class ControlContacto {
    
    
    public boolean registrarContacto(String nombres, String apellidos, String cc, String cargo, String lugar_nto, String fecha_nto, String nivel_estudio, String direccion, String ciudad, String dpto, String celular, String fijo, String email, String genero, int etnia, String discapacidad, int antiguedad_cargo, String condicion_desplazado) throws Exception{
        ContactoDAO dao = new ContactoDAO();
        ContactoDTO contacto = new ContactoDTO(nombres, apellidos, cc, cargo, lugar_nto, fecha_nto, nivel_estudio, direccion, ciudad, dpto, celular, fijo, email, genero, discapacidad, condicion_desplazado, etnia, antiguedad_cargo);
        return dao.registrarContacto(contacto);
    }
    
    public ArrayList<ContactoDTO> consultarContacto(String tipo, String dato) throws Exception{
        ContactoDAO dao = new ContactoDAO();
        return dao.consultarContacto(tipo, dato);
    }
    
}

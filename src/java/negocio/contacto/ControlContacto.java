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
    
    
    public boolean registrarContacto(String nombres, String apellidos, String cc, String cargo, String lugar_nto, String fecha_nto, String nivel_estudio, String direccion, String ciudad, String dpto, String celular, String fijo, String email, String genero, int etnia, String discapacidad, int antiguedad_cargo, String condicion_desplazado, String correo_masivo) throws Exception{
        ContactoDAO dao = new ContactoDAO();
        ContactoDTO contacto = new ContactoDTO(nombres, apellidos, cc, cargo, lugar_nto, fecha_nto, nivel_estudio, direccion, ciudad, dpto, celular, fijo, email, genero, discapacidad, condicion_desplazado, etnia, antiguedad_cargo, correo_masivo);
        return dao.registrarContacto(contacto);
    }
    
    public ArrayList<ContactoDTO> consultarContacto(String tipo, String dato) throws Exception{
        ContactoDAO dao = new ContactoDAO();
        return dao.consultarContacto(tipo, dato);
    }
    
    public boolean actualizarContacto(String cedula, String nombres, String apellido, String cargo, int anio_cargo, String nivel_estudio, String dpto, String ciudad, String direccion, String fijo, String celular, String email) throws Exception{
        ContactoDAO actualizar = new ContactoDAO();
        ContactoDTO dto = new ContactoDTO(nombres, apellido, fijo, cargo, nivel_estudio, direccion, ciudad, dpto, celular, fijo, email, anio_cargo);
        return actualizar.actualizarContacto(cedula, dto);
    }

     public ArrayList<ContactoDTO> consultarContactoTemporal(String tipo, String dato) throws Exception{
        ContactoDAO dao = new ContactoDAO();
        return dao.consultarContactoTemporal(tipo, dato);
    }
     
     public boolean registrarContactoEmpresa(ContactoDTO dto) throws Exception{
         
         ContactoDAO dao = new ContactoDAO();
         return dao.registrarContacto(dto);
     }
}

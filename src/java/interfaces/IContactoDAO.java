/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;
import dto.ContactoDTO;
import java.util.ArrayList;

/**
 *
 * @author quagg
 */
public interface IContactoDAO {
    
    public boolean registrarContacto (ContactoDTO dto) throws Exception;
    public ArrayList<ContactoDTO> consultarContacto (String tipo, String dato) throws Exception;
    public boolean actualizarContacto(String cc, ContactoDTO dto) throws Exception;

}

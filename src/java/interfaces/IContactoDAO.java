/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;
import dto.ContactoDTO;

/**
 *
 * @author quagg
 */
public interface IContactoDAO {
    
    public boolean registrarContacto (ContactoDTO dto) throws Exception;
    public ContactoDTO consultarContacto (String dato) throws Exception;
}

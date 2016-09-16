/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;
import dto.EntidadDTO;

/**
 *
 * @author quagg
 */
public interface IEntidadDAO {
    
    public boolean registrarEntidad(EntidadDTO dto) throws Exception;
    public EntidadDTO consultarEntidad(String dato) throws Exception;
}

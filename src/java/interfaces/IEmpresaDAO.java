/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;
import dto.EmpresaDTO;

/**
 *
 * @author quagg
 */
public interface IEmpresaDAO {
    
    public boolean registrarEmpresa(EmpresaDTO dto) throws Exception;
    public EmpresaDTO consultarEmpresa (String tipo, String dato) throws Exception;
}

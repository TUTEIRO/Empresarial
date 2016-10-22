/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;
import dto.EmpresaDTO;
import java.util.ArrayList;

/**
 *
 * @author quagg
 */
public interface IEmpresaDAO {
    
    public boolean registrarEmpresa(EmpresaDTO dto) throws Exception;
    public ArrayList<EmpresaDTO> consultarEmpresa (String tipo, String dato) throws Exception;
    public boolean registrarEmpleadosEmpresa(EmpresaDTO dto) throws Exception;
    public boolean registrarRegistroMercantil(EmpresaDTO dto) throws Exception;
    
}

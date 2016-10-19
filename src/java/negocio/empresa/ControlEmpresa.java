/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.empresa;

import dao.EmpresaDAO;
import dto.EmpresaDTO;
import java.util.ArrayList;

/**
 *
 * @author quagg
 */
public class ControlEmpresa {
    
    public boolean registrarEmpresa(String nombre, String nit, String nombre_rep_legal, String tipo_constitucion, 
            String fecha_constitucion, String direccion, String ciudad, String telefono, 
            String celular, String email, String url_website, String tipo_empresa, 
            String num_mercantil, String date_renov_mercantil, String codigo_CIIU, String act_internacional, 
            String paises_trabajo, String servicios, String como_info, int constitucion_legal, int emp_tc, int emp_mc, 
            int emp_directos, String emp_reg_mercantil, boolean internet_bsns) throws Exception{
        EmpresaDAO dao = new EmpresaDAO();
        EmpresaDTO empresa = new EmpresaDTO(nombre, nit, nombre_rep_legal, tipo_constitucion, fecha_constitucion, direccion, 
                ciudad, telefono, celular, email, url_website, tipo_empresa, num_mercantil, date_renov_mercantil, codigo_CIIU,
                act_internacional, paises_trabajo, servicios, como_info, constitucion_legal, emp_tc, emp_mc, emp_directos,
                emp_reg_mercantil, internet_bsns);
        return dao.registrarEmpresa(empresa);
    }
    
    public ArrayList<EmpresaDTO> consultarEmpresa(String tipo, String dato) throws Exception{
        EmpresaDAO dao = new EmpresaDAO();
        return dao.consultarEmpresa(tipo, dato);
    }
    
}

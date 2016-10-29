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
            String celular, String email, String url_website, String tipo_empresa, String es_empresa_turistica,
            String codigo_CIIU, String act_internacional, 
            String paises_trabajo, String servicios, String emp_reg_mercantil, String internet_bsns, String cc_contacto) throws Exception{
        EmpresaDAO dao = new EmpresaDAO();
        EmpresaDTO empresa = new EmpresaDTO(nombre, nit, nombre_rep_legal, tipo_constitucion, fecha_constitucion, direccion, 
                ciudad, telefono, celular, email, url_website, es_empresa_turistica, tipo_empresa, codigo_CIIU,
                act_internacional, paises_trabajo, servicios, emp_reg_mercantil, internet_bsns, cc_contacto);
        return dao.registrarEmpresa(empresa);
    }
    
    public ArrayList<EmpresaDTO> consultarEmpresa(String tipo, String dato) throws Exception{
        EmpresaDAO dao = new EmpresaDAO();
        return dao.consultarEmpresa(tipo, dato);
    }
    
    public boolean registrarEmpleadosEmpresas(int empleados_tc, int empleados_mc, int empleados_directos, int empleados_indirectos) throws Exception{
        EmpresaDAO dao = new EmpresaDAO();
        EmpresaDTO dto = new EmpresaDTO(empleados_tc, empleados_mc, empleados_directos, empleados_indirectos);
        return dao.registrarEmpleadosEmpresa(dto);
    }
    
    public boolean registrarRegistroMercantil(String num_mercantil, String date_renov_mercantil) throws Exception{
        EmpresaDAO dao = new EmpresaDAO();
        EmpresaDTO empresa = new EmpresaDTO(num_mercantil, date_renov_mercantil);
        return dao.registrarRegistroMercantil(empresa);
    }
}

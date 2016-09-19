/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import dto.ContactoDTO;
import dto.EmpresaDTO;
import negocio.contacto.ControlContacto;
import negocio.empresa.ControlEmpresa;
import negocio.turistica.ControlTuristica;

/**
 *
 * @author quagg
 */
public class Fachada {
    
    
    public boolean iniciarSesion(){
        return false;
    }
    
    public boolean registrarContacto(String nombres, String apellidos, String cc, String cargo, String lugar_nto,
            String fecha_nto, String nivel_estudio, String direccion, String ciudad, String dpto, String celular, 
            String fijo, String email, String genero, String etnia, String discapacidad, int antiguedad_cargo, 
            boolean condicion_desplazado) throws Exception{
        ControlContacto contacto = new ControlContacto();
        return contacto.registrarContacto(nombres, apellidos, cc, cargo, lugar_nto, fecha_nto, nivel_estudio, direccion,
                ciudad, dpto, celular, fijo, email, genero, etnia, discapacidad, antiguedad_cargo, condicion_desplazado);
    }
    
    public boolean registrarEmpresa(String nombre, String nit, String nombre_rep_legal, String tipo_constitucion, 
            String fecha_constitucion, String direccion, String ciudad, String telefono, 
            String celular, String email, String url_website, String tipo_empresa, 
            String num_mercantil, String date_renov_mercantil, String codigo_CIIU, String act_internacional, 
            String paises_trabajo, String servicios, String como_info, int constitucion_legal, int emp_tc, int emp_mc, 
            int emp_directos, boolean emp_reg_mercantil, boolean internet_bsns) throws Exception{
        ControlEmpresa empresa = new ControlEmpresa();
        return empresa.registrarEmpresa(nombre, nit, nombre_rep_legal, tipo_constitucion, fecha_constitucion, direccion,
                ciudad, telefono, celular, email, url_website, tipo_empresa, num_mercantil, date_renov_mercantil, 
                codigo_CIIU, act_internacional, paises_trabajo, servicios, como_info, constitucion_legal, emp_tc,
                emp_mc, emp_directos, emp_reg_mercantil, internet_bsns);
    }
    
    public boolean registrarEmpresaTur(boolean posee_seguro, boolean posee_reg_nal, boolean export_servicios, boolean libro_migracion_Col, 
            boolean impuesto_turismo, boolean codigo_etica, String seguro, String poliza, String cert_sostenibilidad, 
            String grupo_etnico, String cc_extranjeria, String tipo_turistica, String tipo_alojamiento, 
            String tur_desarrollo, String observaciones, String empresa_asign) throws Exception{
        ControlTuristica turistica = new ControlTuristica();
        return turistica.registrarEmpresaTur(posee_seguro, posee_reg_nal, export_servicios, libro_migracion_Col, impuesto_turismo,
                codigo_etica, seguro, poliza, cert_sostenibilidad, grupo_etnico, cc_extranjeria, tipo_turistica, tipo_alojamiento,
                tur_desarrollo, observaciones, empresa_asign);
    }
    
    public boolean registrarEntidadAds(){
        return false;
    }
    
    public ContactoDTO consultarContacto(String tipo, String dato) throws Exception{
        ControlContacto con = new ControlContacto();
        return con.consultarContacto(tipo, dato);
    }
    
    public EmpresaDTO consultarEmpresa(String tipo, String dato) throws Exception{
        ControlEmpresa emp = new ControlEmpresa();
        return emp.consultarEmpresa(tipo, dato);
    }
    
    public boolean consultarEmpresaTur(){
        return false;
    }
    
    public boolean consultarEntidadAds(){
        return false;
    }
    
    public boolean editarContacto(){
        return false;
    }
    
    public boolean editarEmpresa(){
        return false;
    }
    
    public boolean editarEmpresaTur(){
        return false;
    }
    
    public boolean editarEntidadAds(){
        return false;
    }
}

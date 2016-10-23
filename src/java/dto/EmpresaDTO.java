/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author quagg
 */
public class EmpresaDTO {
    
    private String nombre, nit, nombre_rep_legal, tipo_constitucion, fecha_constitucion, direccion, ciudad, telefono, celular, email, url_website, es_empresa_turistica, tipo_empresa,  num_mercantil, date_renov_mercantil, codigo_CIIU, act_internacional, paises_trabajo, servicios, emp_reg_mercantil, internet_bsns, cc_contacto;
    private int emp_tc, emp_mc, emp_directos, emp_indirectos;
    
    public EmpresaDTO() {
    }

    public EmpresaDTO(String nombre, String nit, String nombre_rep_legal, String tipo_constitucion, 
            String fecha_constitucion, String direccion, String ciudad, String telefono, 
            String celular, String email, String url_website, String es_empresa_turistica, String tipo_empresa,
            String codigo_CIIU, String act_internacional, String paises_trabajo, String servicios,
            String emp_reg_mercantil, String internet_bsns, String cc_contacto) {
        this.nombre = nombre;
        this.nit = nit;
        this.nombre_rep_legal = nombre_rep_legal;
        this.tipo_constitucion = tipo_constitucion;
        this.fecha_constitucion = fecha_constitucion;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.telefono = telefono;
        this.celular = celular;
        this.email = email;
        this.url_website = url_website;
        this.tipo_empresa = tipo_empresa;
        this.es_empresa_turistica = es_empresa_turistica;
        this.codigo_CIIU = codigo_CIIU;
        this.act_internacional = act_internacional;
        this.paises_trabajo = paises_trabajo;
        this.servicios = servicios;
        this.emp_reg_mercantil = emp_reg_mercantil;
        this.internet_bsns = internet_bsns;
        this.cc_contacto = cc_contacto;
    }

    public EmpresaDTO(String nombre, String nit, String nombre_rep_legal, String tipo_constitucion, String direccion, String ciudad, String telefono, String email, String url_website) {
        this.nombre = nombre;
        this.nit = nit;
        this.nombre_rep_legal = nombre_rep_legal;
        this.tipo_constitucion = tipo_constitucion;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.telefono = telefono;
        this.email = email;
        this.url_website = url_website;
    }

    public EmpresaDTO(String nit, int emp_tc, int emp_mc, int emp_directos, int emp_indirectos) {
        this.nit = nit;
        this.emp_tc = emp_tc;
        this.emp_mc = emp_mc;
        this.emp_directos = emp_directos;
        this.emp_indirectos = emp_indirectos;
    }

    public EmpresaDTO(String nit, String num_mercantil, String date_renov_mercantil) {
        this.nit = nit;
        this.num_mercantil = num_mercantil;
        this.date_renov_mercantil = date_renov_mercantil;
    }
    
    

    
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNit() {
        return nit;
    }

    public int getEmp_tc() {
        return emp_tc;
    }

    public void setEmp_tc(int emp_tc) {
        this.emp_tc = emp_tc;
    }

    public int getEmp_mc() {
        return emp_mc;
    }

    public void setEmp_mc(int emp_mc) {
        this.emp_mc = emp_mc;
    }

    public int getEmp_directos() {
        return emp_directos;
    }

    public void setEmp_directos(int emp_directos) {
        this.emp_directos = emp_directos;
    }

    public String getTipo_constitucion() {
        return tipo_constitucion;
    }

    public void setTipo_constitucion(String tipo_constitucion) {
        this.tipo_constitucion = tipo_constitucion;
    }

    public int getEmp_indirectos() {
        return emp_indirectos;
    }

    public void setEmp_indirectos(int emp_indirectos) {
        this.emp_indirectos = emp_indirectos;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getNombre_rep_legal() {
        return nombre_rep_legal;
    }

    public void setNombre_rep_legal(String nombre_rep_legal) {
        this.nombre_rep_legal = nombre_rep_legal;
    }

    public String getFecha_constitucion() {
        return fecha_constitucion;
    }

    public void setFecha_constitucion(String fecha_constitucion) {
        this.fecha_constitucion = fecha_constitucion;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUrl_website() {
        return url_website;
    }

    public void setUrl_website(String url_website) {
        this.url_website = url_website;
    }

    public String getTipo_empresa() {
        return tipo_empresa;
    }

    public void setTipo_empresa(String tipo_empresa) {
        this.tipo_empresa = tipo_empresa;
    }

    public String getNum_mercantil() {
        return num_mercantil;
    }

    public void setNum_mercantil(String num_mercantil) {
        this.num_mercantil = num_mercantil;
    }

    public String getDate_renov_mercantil() {
        return date_renov_mercantil;
    }

    public void setDate_renov_mercantil(String date_renov_mercantil) {
        this.date_renov_mercantil = date_renov_mercantil;
    }

    public String getCodigo_CIIU() {
        return codigo_CIIU;
    }

    public void setCodigo_CIIU(String codigo_CIIU) {
        this.codigo_CIIU = codigo_CIIU;
    }

    public String getAct_internacional() {
        return act_internacional;
    }

    public void setAct_internacional(String act_internacional) {
        this.act_internacional = act_internacional;
    }

    public String getPaises_trabajo() {
        return paises_trabajo;
    }

    public void setPaises_trabajo(String paises_trabajo) {
        this.paises_trabajo = paises_trabajo;
    }

    public String getServicios() {
        return servicios;
    }

    public void setServicios(String servicios) {
        this.servicios = servicios;
    }

    public String getEmp_reg_mercantil() {
        return emp_reg_mercantil;
    }

    public void setEmp_reg_mercantil(String emp_reg_mercantil) {
        this.emp_reg_mercantil = emp_reg_mercantil;
    }

    public String getInternet_bsns() {
        return internet_bsns;
    }

    public void setInternet_bsns(String internet_bsns) {
        this.internet_bsns = internet_bsns;
    }

    public String getCc_contacto() {
        return cc_contacto;
    }

    public void setCc_contacto(String cc_contacto) {
        this.cc_contacto = cc_contacto;
    }

    public String getEs_empresa_turistica() {
        return es_empresa_turistica;
    }

    public void setEs_empresa_turistica(String es_empresa_turistica) {
        this.es_empresa_turistica = es_empresa_turistica;
    }
    
    
}

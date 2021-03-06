/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import dto.ContactoDTO;
import dto.EmpresaDTO;
import dto.EntidadDTO;
import dto.LogroDTO;
import dto.ServicioDTO;
import java.util.ArrayList;
import negocio.contacto.ControlContacto;
import negocio.empresa.ControlEmpresa;
import negocio.entidad.ControlEntidad;
import negocio.serviciologro.ControlServicioLogro;
import negocio.turistica.ControlTuristica;
import negocio.utilidades.ControlUtilidades;

/**
 *
 * @author quagg
 */
public class Fachada {

    public boolean iniciarSesion() {
        return false;
    }

    public boolean registrarContacto(String nombres, String apellidos, String cc, String cargo, String lugar_nto,
            String fecha_nto, String nivel_estudio, String direccion, String ciudad, String dpto, String celular,
            String fijo, String email, String genero, int etnia, String discapacidad, int antiguedad_cargo,
            String condicion_desplazado, String correo_masivo) throws Exception {
        ControlContacto contacto = new ControlContacto();
        return contacto.registrarContacto(nombres, apellidos, cc, cargo, lugar_nto, fecha_nto, nivel_estudio, direccion,
                ciudad, dpto, celular, fijo, email, genero, etnia, discapacidad, antiguedad_cargo, condicion_desplazado, correo_masivo);
    }

    public boolean registrarEmpresa(String nombre, String nit, String nombre_rep_legal, String tipo_constitucion,
            String fecha_constitucion, String direccion, String ciudad, String telefono,
            String celular, String email, String url_website, String tipo_empresa, String es_empresa_turistica,
            String codigo_CIIU, String act_internacional,
            String paises_trabajo, String servicios, String emp_reg_mercantil, String internet_bsns, String cc_contacto) throws Exception {
        ControlEmpresa empresa = new ControlEmpresa();
        return empresa.registrarEmpresa(nombre, nit, nombre_rep_legal, tipo_constitucion, fecha_constitucion, direccion,
                ciudad, telefono, celular, email, url_website, tipo_empresa, es_empresa_turistica,
                codigo_CIIU, act_internacional, paises_trabajo, servicios, emp_reg_mercantil, internet_bsns, cc_contacto);
    }

    public boolean registrarEmpresaTur(String posee_seguro, String posee_reg_nal, String export_servicios, String libro_migracion_Col,
            String impuesto_turismo, String codigo_etica, String poliza, String cert_sostenibilidad,
            String grupo_etnico, String cc_extranjeria, String tipo_turistica, String tipo_alojamiento,
            String tur_desarrollo, String observaciones, String empresa_asign) throws Exception {
        ControlTuristica turistica = new ControlTuristica();
        return turistica.registrarEmpresaTur(posee_seguro, posee_reg_nal, export_servicios, libro_migracion_Col, impuesto_turismo,
                codigo_etica, poliza, cert_sostenibilidad, grupo_etnico, cc_extranjeria, tipo_turistica, tipo_alojamiento,
                tur_desarrollo, observaciones, empresa_asign);
    }

    public boolean registrarEntidadAds(String nit, String nombre, String direccion, String ciudad, String tel_fijo,
            String tel_mov, String url_web, String mail) {
        return false;
    }

    public ArrayList<ContactoDTO> consultarContacto(String tipo, String dato) throws Exception {
        ControlContacto con = new ControlContacto();
        return con.consultarContacto(tipo, dato);
    }

    public ArrayList<EmpresaDTO> consultarEmpresa(String tipo, String dato) throws Exception {
        ControlEmpresa emp = new ControlEmpresa();
        return emp.consultarEmpresa(tipo, dato);
    }

    public boolean consultarEmpresaTur() {
        return false;
    }

    public boolean consultarEntidadAds() {
        return false;
    }

    public boolean editarContacto(String cedula, String nombres, String apellido, String cargo, int anio_cargo, String nivel_estudio, String dpto, String ciudad, String direccion, String fijo, String celular, String email) throws Exception {
        ControlContacto control = new ControlContacto();
        return control.actualizarContacto(cedula, nombres, apellido, cargo, anio_cargo, nivel_estudio, dpto, ciudad, direccion, fijo, celular, email);
    }

    public boolean editarEmpresa() {
        return false;
    }

    public boolean editarEmpresaTur() {
        return false;
    }

    public boolean editarEntidadAds() {
        return false;
    }

    public ArrayList<String> cargarMun(String dpto) throws Exception {
        ControlUtilidades utilidades = new ControlUtilidades();
        return utilidades.cargarMun(dpto);
    }

    public ArrayList<String> cargarDptos() throws Exception {
        ControlUtilidades utilidades = new ControlUtilidades();
        return utilidades.cargarDptos();
    }

    public ArrayList<String> cargarPaises() throws Exception {
        ControlUtilidades utilidades = new ControlUtilidades();
        return utilidades.cargarPaises();
    }

    public ArrayList<String> cargarTipoAlojamientoTuristico() throws Exception {
        ControlUtilidades utilidades = new ControlUtilidades();
        return utilidades.cargarTipoAlojamientoTuristico();
    }

    public ArrayList<String> cargarTipoAgenciaTuristica() throws Exception {
        ControlUtilidades utilidades = new ControlUtilidades();
        return utilidades.cargarTipoAgenciaTuristica();
    }

    public ArrayList<String> cargarTipoTurismo() throws Exception {
        ControlUtilidades utilidades = new ControlUtilidades();
        return utilidades.cargarTipoTurismo();
    }

    public ArrayList<String> cargarEtnicidad() throws Exception {
        ControlUtilidades utilidades = new ControlUtilidades();
        return utilidades.cargarEtnicidad();
    }

    public boolean login(String user, String pw) throws Exception {
        ControlUtilidades utilidades = new ControlUtilidades();
        return utilidades.login("administrador", user, pw);
    }

    public boolean registrarEntidad(String nombre, String nit, String direccion, String ciudad, String fijo, String celular, String email, String sitio_web, String imagen) throws Exception {
        ControlEntidad control = new ControlEntidad();
        return control.registrarEntidad(nombre, nit, direccion, ciudad, fijo, celular, email, sitio_web, imagen);
    }

    public ArrayList<EntidadDTO> consultarEntidad(String tipo, String dato) throws Exception {
        ControlEntidad con = new ControlEntidad();
        return con.consultarEntidad(tipo, dato);
    }

    public boolean registrarEmpleadosEmpresa(int empleados_tc, int empleados_mc, int empleados_directos, int empleados_indirectos) throws Exception {
        ControlEmpresa control = new ControlEmpresa();
        return control.registrarEmpleadosEmpresas(empleados_tc, empleados_mc, empleados_directos, empleados_indirectos);
    }

    public boolean registrarRegistroMercantil(String num_mercantil, String date_renov_mercantil) throws Exception {
        ControlEmpresa control = new ControlEmpresa();
        return control.registrarRegistroMercantil(num_mercantil, date_renov_mercantil);
    }

    public boolean crearServicio(String servicio) throws Exception {
        ControlServicioLogro control = new ControlServicioLogro();
        return control.crearServicio(servicio);
    }

    public boolean crearLogro(String logro) throws Exception {
        ControlServicioLogro control = new ControlServicioLogro();
        return control.crearLogro(logro);
    }

    public ArrayList<ServicioDTO> listarServicios() throws Exception {
        ControlServicioLogro control = new ControlServicioLogro();
        return control.listarServicios();
    }

    public ArrayList<LogroDTO> listarLogros() throws Exception {
        ControlServicioLogro control = new ControlServicioLogro();
        return control.listarLogros();
    }
    
    public boolean asociarServicioLogro(String nombre_s, String infoLogro) throws Exception{
        ControlServicioLogro control = new ControlServicioLogro();
        return control.asociarServicioLogro(nombre_s, infoLogro);
    }
    
    public boolean asociarServicioEntidad(String entidad_nombre, String infoServicio) throws Exception{
        ControlEntidad control = new ControlEntidad();
        return control.asociarServicioEntidad(entidad_nombre, infoServicio);
    }
    
    public ArrayList<ServicioDTO> mostrarServiciosEntidad(String entidad) throws Exception{
        ControlServicioLogro control = new ControlServicioLogro();
        return control.mostrarServicioEntidad(entidad);
    }
    
    public ArrayList<LogroDTO> mostrarLogrosServicio(String logro) throws Exception{
        ControlServicioLogro control = new ControlServicioLogro();
        return control.mostrarLogroServicios(logro);
    }
}

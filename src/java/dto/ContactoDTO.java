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
public class ContactoDTO {
    
    private String nombres, apellidos, cc, cargo, lugar_nacimiento, fecha_nacimiento, nivel_estudio, direccion, ciudad, dpto, celular, fijo, email, genero, discapacidad, condicion_desplazado, correo_masivo;
    private int anio_cargo, etnia;

    public ContactoDTO() {
    }

    public ContactoDTO(String nombres, String apellidos, String cc, String cargo, String lugar_nacimiento, String fecha_nacimiento, String nivel_estudio, String direccion, String ciudad, String dpto, String celular, String fijo, String email, String genero, String discapacidad, String condicion_desplazado, int etnia, int anio_cargo, String correo_masivo) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.cc = cc;
        this.cargo = cargo;
        this.lugar_nacimiento = lugar_nacimiento;
        this.fecha_nacimiento = fecha_nacimiento;
        this.nivel_estudio = nivel_estudio;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.dpto = dpto;
        this.celular = celular;
        this.fijo = fijo;
        this.email = email;
        this.genero = genero;
        this.discapacidad = discapacidad;
        this.condicion_desplazado = condicion_desplazado;
        this.etnia = etnia;
        this.anio_cargo = anio_cargo;
        this.correo_masivo = correo_masivo;
    }

    public ContactoDTO(String nombres, String apellidos, String cc, String cargo, String nivel_estudio, String direccion, String ciudad, String dpto, String celular, String fijo, String email, int anio_cargo) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.cc = cc;
        this.cargo = cargo;
        this.nivel_estudio = nivel_estudio;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.dpto = dpto;
        this.celular = celular;
        this.fijo = fijo;
        this.email = email;
        this.anio_cargo = anio_cargo;
    }

    public ContactoDTO(String nombres, String apellidos, String cc, String direccion, String ciudad, String celular, String email) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.cc = cc;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.celular = celular;
        this.email = email;
    }
    
    

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getLugar_nacimiento() {
        return lugar_nacimiento;
    }

    public void setLugar_nacimiento(String lugar_nacimiento) {
        this.lugar_nacimiento = lugar_nacimiento;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getNivel_estudio() {
        return nivel_estudio;
    }

    public void setNivel_estudio(String nivel_estudio) {
        this.nivel_estudio = nivel_estudio;
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

    public String getDpto() {
        return dpto;
    }

    public void setDpto(String dpto) {
        this.dpto = dpto;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getFijo() {
        return fijo;
    }

    public void setFijo(String fijo) {
        this.fijo = fijo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDiscapacidad() {
        return discapacidad;
    }

    public void setDiscapacidad(String discapacidad) {
        this.discapacidad = discapacidad;
    }

    public String getCondicion_desplazado() {
        return condicion_desplazado;
    }

    public void setCondicion_desplazado(String condicion_desplazado) {
        this.condicion_desplazado = condicion_desplazado;
    }

    public int getEtnia() {
        return etnia;
    }

    public void setEtnia(int etnia) {
        this.etnia = etnia;
    }

    public int getAnio_cargo() {
        return anio_cargo;
    }

    public void setAnio_cargo(int anio_cargo) {
        this.anio_cargo = anio_cargo;
    }

    public String getCorreo_masivo() {
        return correo_masivo;
    }

    public void setCorreo_masivo(String correo_masivo) {
        this.correo_masivo = correo_masivo;
    }

   
    
}

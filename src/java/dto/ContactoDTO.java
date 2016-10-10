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
    
    private String nombres, apellidos, cc, cargo, lugar_nto, fecha_nto, nivel_estudio, direccion, ciudad, dpto, celular, fijo, email, genero, etnia, condicion_desplazado, discapacidad;
    private int antiguedad_cargo;


    public ContactoDTO() {
    }

    public ContactoDTO(String nombres, String apellidos, String cc, String cargo, String lugar_nto, String fecha_nto, String nivel_estudio, String direccion, String ciudad, String dpto, String celular, String fijo, String email, String genero, String etnia, String discapacidad, int antiguedad_cargo, String condicion_desplazado) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.cc = cc;
        this.cargo = cargo;
        this.lugar_nto = lugar_nto;
        this.fecha_nto = fecha_nto;
        this.nivel_estudio = nivel_estudio;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.dpto = dpto;
        this.celular = celular;
        this.fijo = fijo;
        this.email = email;
        this.genero = genero;
        this.etnia = etnia;
        this.discapacidad = discapacidad;
        this.antiguedad_cargo = antiguedad_cargo;
        this.condicion_desplazado = condicion_desplazado;
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

    public String getLugar_nto() {
        return lugar_nto;
    }

    public void setLugar_nto(String lugar_nto) {
        this.lugar_nto = lugar_nto;
    }

    public String getFecha_nto() {
        return fecha_nto;
    }

    public void setFecha_nto(String fecha_nto) {
        this.fecha_nto = fecha_nto;
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

    public String getEtnia() {
        return etnia;
    }

    public void setEtnia(String etnia) {
        this.etnia = etnia;
    }

    public String getDiscapacidad() {
        return discapacidad;
    }

    public void setDiscapacidad(String discapacidad) {
        this.discapacidad = discapacidad;
    }

    public int getAntiguedad_cargo() {
        return antiguedad_cargo;
    }

    public void setAntiguedad_cargo(int antiguedad_cargo) {
        this.antiguedad_cargo = antiguedad_cargo;
    }

    public String getCondicion_desplazado() {
        return condicion_desplazado;
    }

    public void setCondicion_desplazado(String condicion_desplazado) {
        this.condicion_desplazado = condicion_desplazado;
    }
    
    
}

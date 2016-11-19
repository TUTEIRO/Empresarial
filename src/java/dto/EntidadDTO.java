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
public class EntidadDTO {
    
    private String nombre, nit, direccion, ciudad, fijo, celular, email, sitio_web, url_imagen;

    public EntidadDTO(String nombre, String nit, String direccion, String ciudad, String fijo, String celular, String email, String sitio_web, String url_imagen) {
        this.nombre = nombre;
        this.nit = nit;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.fijo = fijo;
        this.celular = celular;
        this.email = email;
        this.sitio_web = sitio_web;
        this.url_imagen = url_imagen;
    }

    public EntidadDTO() {
    }

    public EntidadDTO(String nombre, String nit, String direccion, String ciudad, String fijo, String sitio_web) {
        this.nombre = nombre;
        this.nit = nit;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.fijo = fijo;
        this.sitio_web = sitio_web;
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

    public void setNit(String nit) {
        this.nit = nit;
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

    public String getFijo() {
        return fijo;
    }

    public void setFijo(String fijo) {
        this.fijo = fijo;
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

    public String getSitio_web() {
        return sitio_web;
    }

    public void setSitio_web(String sitio_web) {
        this.sitio_web = sitio_web;
    }

    public String getUrl_imagen() {
        return url_imagen;
    }

    public void setUrl_imagen(String url_imagen) {
        this.url_imagen = url_imagen;
    }
    
    
}

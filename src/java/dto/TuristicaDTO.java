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
public class TuristicaDTO {
    
  
    private String poliza, cert_sostenibilidad, grupo_etnico, cc_extranjeria, tipo_turistica, tipo_alojamiento, tur_desarrollo, observaciones, posee_seguro, posee_reg_nal, export_servicios, libro_migracion_Col, impuesto_turismo, codigo_etica;

    public TuristicaDTO() {
    }

    public TuristicaDTO(String posee_seguro, String posee_reg_nal, String export_servicios, String libro_migracion_Col, 
            String impuesto_turismo, String codigo_etica, String poliza, String cert_sostenibilidad, 
            String grupo_etnico, String cc_extranjeria, String tipo_turistica, String tipo_alojamiento, 
            String tur_desarrollo, String observaciones) {
        this.posee_seguro = posee_seguro;
        this.posee_reg_nal = posee_reg_nal;
        this.export_servicios = export_servicios;
        this.libro_migracion_Col = libro_migracion_Col;
        this.impuesto_turismo = impuesto_turismo;
        this.codigo_etica = codigo_etica;
        this.poliza = poliza;
        this.cert_sostenibilidad = cert_sostenibilidad;
        this.grupo_etnico = grupo_etnico;
        this.cc_extranjeria = cc_extranjeria;
        this.tipo_turistica = tipo_turistica;
        this.tipo_alojamiento = tipo_alojamiento;
        this.tur_desarrollo = tur_desarrollo;
        this.observaciones = observaciones;
    }

    
    
    public String getPosee_seguro() {
        return posee_seguro;
    }

    public void setPosee_seguro(String posee_seguro) {
        this.posee_seguro = posee_seguro;
    }

    public String getPosee_reg_nal() {
        return posee_reg_nal;
    }

    public void setPosee_reg_nal(String posee_reg_nal) {
        this.posee_reg_nal = posee_reg_nal;
    }

    public String getExport_servicios() {
        return export_servicios;
    }

    public void setExport_servicios(String export_servicios) {
        this.export_servicios = export_servicios;
    }

    public String getLibro_migracion_Col() {
        return libro_migracion_Col;
    }

    public void setLibro_migracion_Col(String libro_migracion_Col) {
        this.libro_migracion_Col = libro_migracion_Col;
    }

    public String getImpuesto_turismo() {
        return impuesto_turismo;
    }

    public void setImpuesto_turismo(String impuesto_turismo) {
        this.impuesto_turismo = impuesto_turismo;
    }

    public String getCodigo_etica() {
        return codigo_etica;
    }

    public void setCodigo_etica(String codigo_etica) {
        this.codigo_etica = codigo_etica;
    }


    public String getPoliza() {
        return poliza;
    }

    public void setPoliza(String poliza) {
        this.poliza = poliza;
    }

    public String getCert_sostenibilidad() {
        return cert_sostenibilidad;
    }

    public void setCert_sostenibilidad(String cert_sostenibilidad) {
        this.cert_sostenibilidad = cert_sostenibilidad;
    }

    public String getGrupo_etnico() {
        return grupo_etnico;
    }

    public void setGrupo_etnico(String grupo_etnico) {
        this.grupo_etnico = grupo_etnico;
    }

    public String getCc_extranjeria() {
        return cc_extranjeria;
    }

    public void setCc_extranjeria(String cc_extranjeria) {
        this.cc_extranjeria = cc_extranjeria;
    }

    public String getTipo_turistica() {
        return tipo_turistica;
    }

    public void setTipo_turistica(String tipo_turistica) {
        this.tipo_turistica = tipo_turistica;
    }

    public String getTipo_alojamiento() {
        return tipo_alojamiento;
    }

    public void setTipo_alojamiento(String tipo_alojamiento) {
        this.tipo_alojamiento = tipo_alojamiento;
    }

    public String getTur_desarrollo() {
        return tur_desarrollo;
    }

    public void setTur_desarrollo(String tur_desarrollo) {
        this.tur_desarrollo = tur_desarrollo;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    
}

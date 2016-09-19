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
    
    private boolean posee_seguro, posee_reg_nal, export_servicios, libro_migracion_Col, impuesto_turismo, codigo_etica;
    private String seguro, poliza, cert_sostenibilidad, grupo_etnico, cc_extranjeria, tipo_turistica, tipo_alojamiento, tur_desarrollo, observaciones, empresa_asign;

    public TuristicaDTO() {
    }

    public TuristicaDTO(boolean posee_seguro, boolean posee_reg_nal, boolean export_servicios, boolean libro_migracion_Col, 
            boolean impuesto_turismo, boolean codigo_etica, String seguro, String poliza, String cert_sostenibilidad, 
            String grupo_etnico, String cc_extranjeria, String tipo_turistica, String tipo_alojamiento, 
            String tur_desarrollo, String observaciones, String empresa_asign) {
        this.posee_seguro = posee_seguro;
        this.posee_reg_nal = posee_reg_nal;
        this.export_servicios = export_servicios;
        this.libro_migracion_Col = libro_migracion_Col;
        this.impuesto_turismo = impuesto_turismo;
        this.codigo_etica = codigo_etica;
        this.seguro = seguro;
        this.poliza = poliza;
        this.cert_sostenibilidad = cert_sostenibilidad;
        this.grupo_etnico = grupo_etnico;
        this.cc_extranjeria = cc_extranjeria;
        this.tipo_turistica = tipo_turistica;
        this.tipo_alojamiento = tipo_alojamiento;
        this.tur_desarrollo = tur_desarrollo;
        this.observaciones = observaciones;
        this.empresa_asign = empresa_asign;
    }

    
    
    public boolean isPosee_seguro() {
        return posee_seguro;
    }

    public void setPosee_seguro(boolean posee_seguro) {
        this.posee_seguro = posee_seguro;
    }

    public boolean isPosee_reg_nal() {
        return posee_reg_nal;
    }

    public void setPosee_reg_nal(boolean posee_reg_nal) {
        this.posee_reg_nal = posee_reg_nal;
    }

    public boolean isExport_servicios() {
        return export_servicios;
    }

    public void setExport_servicios(boolean export_servicios) {
        this.export_servicios = export_servicios;
    }

    public boolean isLibro_migracion_Col() {
        return libro_migracion_Col;
    }

    public void setLibro_migracion_Col(boolean libro_migracion_Col) {
        this.libro_migracion_Col = libro_migracion_Col;
    }

    public boolean isImpuesto_turismo() {
        return impuesto_turismo;
    }

    public void setImpuesto_turismo(boolean impuesto_turismo) {
        this.impuesto_turismo = impuesto_turismo;
    }

    public boolean isCodigo_etica() {
        return codigo_etica;
    }

    public void setCodigo_etica(boolean codigo_etica) {
        this.codigo_etica = codigo_etica;
    }

    public String getSeguro() {
        return seguro;
    }

    public void setSeguro(String seguro) {
        this.seguro = seguro;
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

    public String getEmpresa_asign() {
        return empresa_asign;
    }

    public void setEmpresa_asign(String empresa_asign) {
        this.empresa_asign = empresa_asign;
    }
    
    
}

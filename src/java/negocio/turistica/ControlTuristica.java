/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.turistica;

import dao.TuristicaDAO;
import dto.TuristicaDTO;

/**
 *
 * @author quagg
 */
public class ControlTuristica {
    
    public boolean registrarEmpresaTur(String posee_seguro, String posee_reg_nal, String export_servicios, String libro_migracion_Col, 
            String impuesto_turismo, String codigo_etica, String poliza, String cert_sostenibilidad, 
            String grupo_etnico, String cc_extranjeria, String tipo_turistica, String tipo_alojamiento, 
            String tur_desarrollo, String observaciones, String empresa_asign) throws Exception{
        TuristicaDAO dao = new TuristicaDAO();
        TuristicaDTO turistica = new TuristicaDTO(posee_seguro, posee_reg_nal, export_servicios, libro_migracion_Col,
                impuesto_turismo, codigo_etica, poliza, cert_sostenibilidad, grupo_etnico, cc_extranjeria, 
                tipo_turistica, tipo_alojamiento, tur_desarrollo, observaciones);
        return dao.registrarTuristica(turistica, empresa_asign);
    }
    
}

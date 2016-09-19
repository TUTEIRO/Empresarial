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
    
    public boolean registrarEmpresaTur(boolean posee_seguro, boolean posee_reg_nal, boolean export_servicios, boolean libro_migracion_Col, 
            boolean impuesto_turismo, boolean codigo_etica, String seguro, String poliza, String cert_sostenibilidad, 
            String grupo_etnico, String cc_extranjeria, String tipo_turistica, String tipo_alojamiento, 
            String tur_desarrollo, String observaciones, String empresa_asign) throws Exception{
        TuristicaDAO dao = new TuristicaDAO();
        TuristicaDTO turistica = new TuristicaDTO(posee_seguro, posee_reg_nal, export_servicios, libro_migracion_Col,
                impuesto_turismo, codigo_etica, seguro, poliza, cert_sostenibilidad, grupo_etnico, cc_extranjeria, 
                tipo_turistica, tipo_alojamiento, tur_desarrollo, observaciones, empresa_asign);
        return dao.registrarTuristica(turistica);
    }
    
}

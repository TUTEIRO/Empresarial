/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.TuristicaDTO;
import interfaces.ITuristicaDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import util.Conexion;

/**
 *
 * @author quagg
 */
public class TuristicaDAO implements ITuristicaDAO{
    
    private Connection conn = null;

    @Override
    public boolean registrarTuristica(TuristicaDTO dto, String nombre_emp) throws Exception {
       conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("INSERT INTO `empresa_turistica`(`tur_seguro`, `tur_registro_nal`, `tur_poliza`,`tur_cert_sostenibilidad`, `tur_export_servicios`, `tur_libro_migracion_Col`, `tur_impuesto_turismo`, `tur_codigo_etica`, `tur_grupo_etnico`, `tur_cc_extranjeria`, `tur_observaciones`, `tur_tipo_turistica`, `tur_tipo_alojamiento`, `tur_turismo_desarrollo`, `tur_empresa_ref`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            
            stmt.setString(1, dto.getPosee_seguro());
            stmt.setString(2, dto.getPosee_reg_nal());
            stmt.setString(3, dto.getPoliza());
            stmt.setString(4, dto.getCert_sostenibilidad());
            stmt.setString(5, dto.getExport_servicios());
            stmt.setString(6, dto.getLibro_migracion_Col());
            stmt.setString(7, dto.getImpuesto_turismo());
            stmt.setString(8, dto.getCodigo_etica());
            stmt.setString(9, dto.getGrupo_etnico());
            stmt.setString(10, dto.getCc_extranjeria());
            stmt.setString(11, dto.getObservaciones());
            stmt.setString(12, dto.getTipo_turistica());
            stmt.setString(13, dto.getTipo_alojamiento());
            stmt.setString(14, dto.getTur_desarrollo());
            stmt.setString(15, nombre_emp);
            int total = stmt.executeUpdate();
            if (total > 0) {
                stmt.close();
                exito = true;
            }
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return exito;
    }

    @Override
    public TuristicaDTO consultarTuristica(String dato) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

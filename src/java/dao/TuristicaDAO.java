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
    public boolean registrarTuristica(TuristicaDTO dto) throws Exception {
       conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("INSERT INTO  `ufps_1`.`empresa_empleados` (\n"
                    + "`empp_nit` ,\n"
                    + "`empp_tc` ,\n"
                    + "`empp_mt` ,\n"
                    + "`empp_directos` ,\n"
                    + "`empp_indirectos` ,\n"
                    + ")\n"
                    + "VALUES (\n"
                    + "?,?,?,?,?\n"
                    + ");");
            stmt.setString(1, dto.getNit());
            stmt.setInt(2, dto.getEmp_tc());
            stmt.setInt(3, dto.getEmp_mc());
            stmt.setInt(4, dto.getEmp_directos());
            stmt.setInt(5, dto.getEmp_indirectos());
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

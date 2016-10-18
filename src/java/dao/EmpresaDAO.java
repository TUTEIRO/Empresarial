/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.EmpresaDTO;
import interfaces.IEmpresaDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import util.Conexion;

/**
 *
 * @author quagg
 */
public class EmpresaDAO implements IEmpresaDAO{

    
     private Connection conn = null;
     
    @Override
    public boolean registrarEmpresa(EmpresaDTO dto) throws Exception {
       conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("INSERT INTO  `ufps_1`.`contacto` (\n"
                    + "`emp_nombre` ,\n"
                    + "`emp_nit` ,\n"
                    + "`emp_nombre_rep_legal` ,\n"
                    + "`emp_constitucion_legal` ,\n"
                    + "`emp_fecha_constitucion` ,\n"
                    + "`emp_direccion` ,\n"
                    + "`emp_ciudad` ,\n"
                    + "`emp_telefono` ,\n"
                    + "`emp_celular` ,\n"
                    + "`emp_email` ,\n"
                    + "`emp_url_website` ,\n"
                    + "`emp_tipo_empresa` ,\n"
                    + "`emp_reg_mercantil` ,\n"
                    + "`emp_num_reg_mercantil` ,\n"
                    + "`emp_renovacion_mercantil` ,\n"
                    + "`emp_codigo_CIIU` ,\n"
                    + "`emp_act_internacional` ,\n"
                    + "`emp_paises_trabajo` ,\n"
                    + "`emp_internet_bsns`\n"
                    + "`emp_servicios` \n"
                    + "`emp_como_informacion` \n"
                    + ")\n"
                    + "VALUES (\n"
                    + "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?\n"
                    + ");");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getNit());
            stmt.setString(3, dto.getNombre_rep_legal());
            stmt.setInt(4, dto.getConstitucion_legal());
            stmt.setString(5, dto.getFecha_constitucion());
            stmt.setString(6, dto.getDireccion());
            stmt.setString(7, dto.getCiudad());
            stmt.setString(8, dto.getTelefono());
            stmt.setString(9, dto.getCelular());
            stmt.setString(10, dto.getEmail());
            stmt.setString(11, dto.getUrl_website());
            stmt.setString(12, dto.getTipo_empresa());
            stmt.setString(13, dto.get);
            stmt.setString(14, dto.getNum_mercantil());
            stmt.setString(15, dto.getDate_renov_mercantil());
            stmt.setString(16, dto.getCodigo_CIIU());
            stmt.setString(17, dto.getAct_internacional());
            stmt.setString(18, dto.getPaises_trabajo());
            stmt.setInt(19, dto.get);
            stmt.setString(20, dto.getServicios());
            stmt.setString(21, dto.getComo_info());
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
    public EmpresaDTO consultarEmpresa(String tipo, String dato) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.ContactoDTO;
import dto.EmpresaDTO;
import interfaces.IEmpresaDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import util.Conexion;

/**
 *
 * @author quagg
 */
public class EmpresaDAO implements IEmpresaDAO {

    private Connection conn = null;

    @Override
    public boolean registrarEmpresa(EmpresaDTO dto) throws Exception {
        conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("INSERT INTO  `ufps_1`.`empresa` (\n"
                    + "`emp_fakeid`,\n"
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
                    + "`emp_es_turistica` ,\n"
                    + "`emp_reg_mercantil` ,\n"
                    + "`tipo_empresa` ,\n"
                    + "`emp_codigo_CIIU` ,\n"
                    + "`emp_act_internacional` ,\n"
                    + "`emp_paises_trabajo` ,\n"
                    + "`emp_internet_bsns`\n"
                    + "`emp_servicios` \n"
                    + "`emp_contacto_ref` \n"
                    + ")\n"
                    + "VALUES (\n"
                    + "NULL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?\n"
                    + ");");
            stmt.setString(2, dto.getNombre());
            stmt.setString(3, dto.getNit());
            stmt.setString(4, dto.getNombre_rep_legal());
            stmt.setString(5, dto.getTipo_constitucion());
            stmt.setString(6, dto.getFecha_constitucion());
            stmt.setString(7, dto.getDireccion());
            stmt.setString(8, dto.getCiudad());
            stmt.setString(9, dto.getTelefono());
            stmt.setString(10, dto.getCelular());
            stmt.setString(11, dto.getEmail());
            stmt.setString(12, dto.getUrl_website());
            stmt.setString(13, dto.getTipo_empresa());
            stmt.setString(14, dto.getEmp_reg_mercantil());
            stmt.setString(15, dto.getTipo_empresa());
            stmt.setString(16, dto.getCodigo_CIIU());
            stmt.setString(17, dto.getAct_internacional());
            stmt.setString(18, dto.getPaises_trabajo());
            stmt.setString(19, dto.getInternet_bsns());
            stmt.setString(20, dto.getServicios());
            stmt.setString(21, dto.getCc_contacto());
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
    public ArrayList<EmpresaDTO> consultarEmpresa(String tipo, String dato) throws Exception {

        ArrayList<EmpresaDTO> list = new ArrayList();
        conn = Conexion.conectar();
        PreparedStatement stmt = null;
        EmpresaDTO empresa = null;
        ResultSet res = null;
        try {
            switch (tipo) {
                case "nombre":
                    stmt = conn.prepareStatement("SELECT * FROM empresa WHERE emp_nombre LIKE '%" + dato + "%'");
                    break;
                case "ctocc":
                    stmt = conn.prepareStatement("SELECT * FROM empresa WHERE emp_contacto_ref=" + dato);
                    break;
                case "ciiu":
                    stmt = conn.prepareStatement("SELECT * FROM empresa WHERE emp_codigo_CIIU=" + dato);
                    break;
                case "mun":
                    stmt = conn.prepareStatement("SELECT * FROM empresa WHERE emp_ciudad=" + dato);
                    break;
                case "tur":
                    stmt = conn.prepareStatement("SELECT * from empresa WHERE emp_es_turistica = 'si'");
                    break;
                case "inter":
                    stmt = conn.prepareStatement("SELECT * from empresa WHERE emp_act_internacional = 'si'");
                    break;
                case "internet":
                    stmt = conn.prepareStatement("SELECT * from empresa WHERE emp_internet_bsns = 'si'");
                    break;
                default:
                    break;
            }
            res = stmt.executeQuery();
            while(res.next()){
                empresa = new EmpresaDTO();
                empresa.setNombre(res.getString(2));
                empresa.setNit(res.getString(3));
                empresa.setNombre_rep_legal(res.getString(4));
                empresa.setDireccion(res.getString(7));
                empresa.setCiudad(res.getString(8));
                empresa.setTelefono(res.getString(9));
                empresa.setCelular(res.getString(10));
                empresa.setEmail(res.getString(11));
                empresa.setUrl_website(res.getString(12));
                empresa.setTipo_empresa(res.getString(15));
                empresa.setCodigo_CIIU(res.getString(16));
                empresa.setCc_contacto(res.getString(21));
                list.add(empresa);
            }
            stmt.close();
            res.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    @Override
    public boolean registrarEmpleadosEmpresa(EmpresaDTO dto) throws Exception {
        conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        PreparedStatement stmt2 = null;
        int id = 0;
        try {
            stmt2 = conn.prepareStatement("SELECT MAX(emp_fakeid) FROM empresa");
            ResultSet res = stmt2.executeQuery();
            while(res.next()){
                id = res.getInt(1);
            }
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
            stmt.setInt(1, id);
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
    public boolean registrarRegistroMercantil(EmpresaDTO dto) throws Exception {
        conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        PreparedStatement stmt2 = null;
        int id = 0;
        try {
            stmt2 = conn.prepareStatement("SELECT MAX(emp_fakeid) FROM empresa");
            ResultSet res = stmt2.executeQuery();
            while(res.next()){
                id = res.getInt(1);
            }
            stmt = conn.prepareStatement("INSERT INTO  `ufps_1`.`empresa_reg_mercantil` (\n"
                    + "`empresa_nit` ,\n"
                    + "`emp_num_reg_mercantil` ,\n"
                    + "`emp_renovacion_mercantil` ,\n"
                    + ")\n"
                    + "VALUES (\n"
                    + "?,?,?\n"
                    + ");");
            stmt.setInt(1, id);
            stmt.setString(2, dto.getNum_mercantil());
            stmt.setString(3, dto.getDate_renov_mercantil());
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

}

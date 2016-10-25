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
                    + "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?\n"
                    + ");");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getNit());
            stmt.setString(3, dto.getNombre_rep_legal());
            stmt.setString(4, dto.getTipo_constitucion());
            stmt.setString(5, dto.getFecha_constitucion());
            stmt.setString(6, dto.getDireccion());
            stmt.setString(7, dto.getCiudad());
            stmt.setString(8, dto.getTelefono());
            stmt.setString(9, dto.getCelular());
            stmt.setString(10, dto.getEmail());
            stmt.setString(11, dto.getUrl_website());
            stmt.setString(12, dto.getTipo_empresa());
            stmt.setString(13, dto.getEmp_reg_mercantil());
            stmt.setString(14, dto.getTipo_empresa());
            stmt.setString(15, dto.getCodigo_CIIU());
            stmt.setString(16, dto.getAct_internacional());
            stmt.setString(17, dto.getPaises_trabajo());
            stmt.setString(18, dto.getInternet_bsns());
            stmt.setString(19, dto.getServicios());
            stmt.setString(20, dto.getCc_contacto());
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
        try {
            if (tipo.equals("nombre")) {
                stmt = conn.prepareStatement("SELECT * FROM empresa WHERE emp_nombre LIKE '%" + dato + "%'");
                ResultSet res = stmt.executeQuery();
                while (res.next()) {
                    empresa = new EmpresaDTO();
                    empresa.setNombre(res.getString(1));
                    empresa.setNit(res.getString(2));
                    empresa.setNombre_rep_legal(res.getString(3));
                    empresa.setTipo_constitucion(res.getString(4));
                    empresa.setDireccion(res.getString(6));
                    empresa.setCiudad(res.getString(7));
                    empresa.setTelefono(res.getString(8));
                    empresa.setEmail(res.getString(10));
                    empresa.setUrl_website(res.getString(11));
                    list.add(empresa);
                }
                stmt.close();
                res.close();
            } else if (tipo.equals("nit")) {
                stmt = conn.prepareStatement("SELECT * FROM empresa WHERE emp_nit=" + dato);
                ResultSet res = stmt.executeQuery();
                while (res.next()) {
                    empresa = new EmpresaDTO();
                    empresa.setNombre(res.getString(1));
                    empresa.setNit(res.getString(2));
                    empresa.setNombre_rep_legal(res.getString(3));
                    empresa.setTipo_constitucion(res.getString(4));
                    empresa.setDireccion(res.getString(6));
                    empresa.setCiudad(res.getString(7));
                    empresa.setTelefono(res.getString(8));
                    empresa.setEmail(res.getString(10));
                    empresa.setUrl_website(res.getString(11));
                    list.add(empresa);
                }
                stmt.close();
                res.close();
            } else if (tipo.equals("cc")) {
                stmt = conn.prepareStatement("SELECT * FROM empresa WHERE emp_contacto_ref=" + dato);
                ResultSet res = stmt.executeQuery();
                while (res.next()) {
                    empresa = new EmpresaDTO();
                    empresa.setNombre(res.getString(1));
                    empresa.setNit(res.getString(2));
                    empresa.setNombre_rep_legal(res.getString(3));
                    empresa.setTipo_constitucion(res.getString(4));
                    empresa.setDireccion(res.getString(6));
                    empresa.setCiudad(res.getString(7));
                    empresa.setTelefono(res.getString(8));
                    empresa.setEmail(res.getString(10));
                    empresa.setUrl_website(res.getString(11));
                    list.add(empresa);
                }
                stmt.close();
                res.close();
            }
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
    public boolean registrarRegistroMercantil(EmpresaDTO dto) throws Exception {
        conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("INSERT INTO  `ufps_1`.`empresa_reg_mercantil` (\n"
                    + "`empresa_nit` ,\n"
                    + "`emp_num_reg_mercantil` ,\n"
                    + "`emp_renovacion_mercantil` ,\n"
                    + ")\n"
                    + "VALUES (\n"
                    + "?,?,?\n"
                    + ");");
            stmt.setString(1, dto.getNit());
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

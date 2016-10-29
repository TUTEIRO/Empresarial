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
        System.out.println("contacto"+ dto.getCc_contacto());
        System.out.println("servicios"+ dto.getServicios());
        try {
            stmt = conn.prepareStatement("INSERT INTO `empresa`(`emp_nombre`, `emp_nit`, `emp_nombre_rep_legal`, `emp_constitucion_legal`, `emp_fecha_constitucion`, `emp_direccion`, `emp_ciudad`, `emp_telefono`, `emp_celular`, `emp_email`, `emp_url_website`, `emp_es_turistica`, `emp_reg_mercantil`, `tipo_empresa`, `emp_codigo_CIIU`, `emp_act_internacional`, `emp_paises_trabajo`, `emp_internet_bsns`, `emp_servicios`, `emp_contacto_ref`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
        ResultSet res = null;
        try {
            switch (tipo) {
                case "nombre":
                    stmt = conn.prepareStatement("SELECT * FROM empresa WHERE emp_nombre LIKE '%" + dato + "%'");
                    break;
                case "nit":
                    stmt = conn.prepareStatement("SELECT * FROM empresa WHERE emp_nombre LIKE '%" + dato + "%'");
                    break;
                case "cc":
                    stmt = conn.prepareStatement("SELECT * FROM empresa WHERE emp_nombre LIKE '%" + dato + "%'");
                    break;
                default:
                    break;
            }
            res = stmt.executeQuery();
            while(res.next()){
                empresa = new EmpresaDTO();
                empresa.setNombre(res.getString(2));
                
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
        PreparedStatement stmt2 = null;
        int id = 0;
        try {
            stmt2 = conn.prepareStatement("SELECT MAX(emp_fakeid) FROM empresa");
            ResultSet res = stmt2.executeQuery();
            while(res.next()){
                id = res.getInt(1);
            }
            stmt = conn.prepareStatement("INSERT INTO `empresa_empleados`(`empp_nit`, `empp_tc`, `empp_mt`, `empp_directos`, `empp_indirectos`) VALUES (?,?,?,?,?)");
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
            stmt = conn.prepareStatement("INSERT INTO `empresa_reg_mercantil`(`empresa_nit`, `emp_num_reg_mercantil`, `emp_renovacion_mercantil`) VALUES (?,?,?)");
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.ContactoDTO;
import interfaces.IContactoDAO;
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
public class ContactoDAO implements IContactoDAO {

    private Connection conn = null;

    @Override
    public boolean registrarContacto(ContactoDTO dto) throws Exception {

        conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("INSERT INTO  `ufps_1`.`contacto` (\n"
                    + "`cto_nombres` ,\n"
                    + "`cto_apellidos` ,\n"
                    + "`cto_cc` ,\n"
                    + "`cto_cargo` ,\n"
                    + "`cto_anios_cargo` ,\n"
                    + "`cto_lugar_nacimiento` ,\n"
                    + "`cto_fecha_nacimiento` ,\n"
                    + "`cto_nivel_estudio` ,\n"
                    + "`cto_direccion` ,\n"
                    + "`cto_ciudad` ,\n"
                    + "`cto_departamento` ,\n"
                    + "`cto_celular` ,\n"
                    + "`cto_fijo` ,\n"
                    + "`cto_email` ,\n"
                    + "`cto_genero` ,\n"
                    + "`cto_etnia` ,\n"
                    + "`cto_condicion_desplazado` ,\n"
                    + "`cto_discapacidad` ,\n"
                    + "`cto_correo_masivo`\n"
                    + ")\n"
                    + "VALUES (\n"
                    + "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?\n"
                    + ");");
            stmt.setString(1, dto.getNombres());
            stmt.setString(2, dto.getApellidos());
            stmt.setString(3, dto.getCc());
            stmt.setString(4, dto.getCargo());
            stmt.setInt(5, dto.getAnio_cargo());
            stmt.setString(6, dto.getLugar_nacimiento());
            stmt.setString(7, dto.getFecha_nacimiento());
            stmt.setString(8, dto.getNivel_estudio());
            stmt.setString(9, dto.getDireccion());
            stmt.setString(10, dto.getCiudad());
            stmt.setString(11, dto.getDpto());
            stmt.setString(12, dto.getCelular());
            stmt.setString(13, dto.getFijo());
            stmt.setString(14, dto.getEmail());
            stmt.setString(15, dto.getGenero());
            stmt.setInt(16, dto.getEtnia());
            stmt.setString(17, dto.getCondicion_desplazado());
            stmt.setString(18, dto.getDiscapacidad());
            stmt.setInt(19, 0);
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
    public ArrayList<ContactoDTO> consultarContacto(String tipo, String dato) throws Exception {
        ArrayList<ContactoDTO> list = new ArrayList();
        conn = Conexion.conectar();
        PreparedStatement stmt = null;
        ContactoDTO contacto = null;
        try {
            if (tipo.equals("nombre")) {
                stmt = conn.prepareStatement("SELECT * FROM contacto WHERE cto_nombres=" + dato);
                ResultSet res = stmt.executeQuery();
                while (res.next()) {
//                    contacto = new ContactoDTO(res.getString(1), res.getString(2), res.getString(3), res.getString(9), res.getString(10), res.getString(12), res.getString(14));
                    list.add(contacto);
                }
                stmt.close();
                res.close();
            } else if (tipo.equals("cc")) {
                stmt = conn.prepareStatement("SELECT * FROM contacto WHERE cto_cc=" + dato);
                ResultSet res = stmt.executeQuery();
                while (res.next()) {
//                    contacto = new ContactoDTO(res.getString(1), res.getString(2), res.getString(3), res.getString(9), res.getString(10), res.getString(12), res.getString(14));
                    list.add(contacto);
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

}

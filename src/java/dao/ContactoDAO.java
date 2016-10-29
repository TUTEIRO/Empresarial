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
            stmt.setString(19, dto.getCorreo_masivo());
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
        ResultSet res = null;
        try {
            switch (tipo) {
                case "nombre":
                    stmt = conn.prepareStatement("SELECT * FROM contacto WHERE cto_nombres LIKE '%" + dato + "%'");
                    break;
                case "apellido":
                    stmt = conn.prepareStatement("SELECT * FROM contacto WHERE cto_apellidos LIKE '%" + dato + "%'");
                    break;
                case "cc":
                    stmt = conn.prepareStatement("SELECT * FROM contacto WHERE cto_cc=" + dato);
                    break;
                case "dpto":
                    stmt = conn.prepareStatement("SELECT * FROM contacto WHERE cto_departamento=" + dato);
                    break;
                case "mun":
                    stmt = conn.prepareStatement("SELECT * FROM contacto WHERE cto_ciudad=" + dato);
                    break;
                case "pais":
                    stmt = conn.prepareStatement("SELECT * FROM contacto WHERE cto_lugar_nacimiento LIKE '%" + dato + "%'");
                    break;
                default:
                    break;
            }
            res = stmt.executeQuery();
            while (res.next()) {
                contacto = new ContactoDTO();
                contacto.setNombres(res.getString(1));
                contacto.setApellidos(res.getString(2));
                contacto.setCc(res.getString(3));
                contacto.setCargo(res.getString(4));
                contacto.setAnio_cargo(res.getInt(5));
                contacto.setLugar_nacimiento(res.getString(6));
                contacto.setFecha_nacimiento(res.getString(7));
                contacto.setNivel_estudio(res.getString(8));
                contacto.setDireccion(res.getString(9));
                contacto.setCiudad(res.getString(10));
                contacto.setDpto(res.getString(11));
                contacto.setCelular(res.getString(12));
                contacto.setFijo(res.getString(13));
                contacto.setEmail(res.getString(14));
                contacto.setGenero(res.getString(15));
                contacto.setEtnia(res.getInt(16));
                contacto.setCondicion_desplazado(res.getString(17));
                contacto.setDiscapacidad(res.getString(18));
                contacto.setCorreo_masivo(res.getString(19));
                list.add(contacto);
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
    public boolean actualizarContacto(String cc, ContactoDTO dto) throws Exception {
        conn = Conexion.conectar();
        PreparedStatement stmt = null;
        boolean exito = false;
        try {
            stmt = conn.prepareStatement("UPDATE contacto SET cto_nombres=?,cto_apellidos=?,cto_cargo=?,cto_anios_cargo=?,cto_nivel_estudio=?,cto_departamento=?,cto_ciudad=?,cto_direccion=?,cto_fijo=?,cto_celular=?,cto_email=? WHERE cto_cc='" + cc + "'");
            stmt.setString(1, dto.getNombres());
            stmt.setString(2, dto.getApellidos());
            stmt.setString(3, dto.getCargo());
            stmt.setInt(4, dto.getAnio_cargo());
            stmt.setString(5, dto.getNivel_estudio());
            stmt.setString(6, dto.getDpto());
            stmt.setString(7, dto.getCiudad());
            stmt.setString(8, dto.getDireccion());
            stmt.setString(9, dto.getFijo());
            stmt.setString(10, dto.getCelular());
            stmt.setString(11, dto.getEmail());
            int total = stmt.executeUpdate();
            if (total > 0) {
                exito = true;
            }
        } catch (SQLException ex) {
            throw ex;
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return exito;
    }

}

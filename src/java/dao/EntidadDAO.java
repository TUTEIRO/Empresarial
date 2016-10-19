/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.EmpresaDTO;
import dto.EntidadDTO;
import interfaces.IEntidadDAO;
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
public class EntidadDAO implements IEntidadDAO{
    
     private Connection conn = null;

    @Override
    public boolean registrarEntidad(EntidadDTO dto) throws Exception {
         conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("INSERT INTO  `ufps_1`.`entidad` (\n"
                    + "`ent_nombre` ,\n"
                    + "`ent_nit` ,\n"
                    + "`ent_direccion` ,\n"
                    + "`ent_ciudad` ,\n"
                    + "`ent_fijo` ,\n"
                    + "`ent_celular` ,\n"
                    + "`ent_email` ,\n"
                    + "`ent_url_website` ,\n"
                    + "`ent_descripcion` ,\n"
                    + "`ent_url_imagen` ,\n"
                    + ")\n"
                    + "VALUES (\n"
                    + "?,?,?,?,?,?,?,?,?,?\n"
                    + ");");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getNit());
            stmt.setString(3, dto.getDireccion());
            stmt.setString(4, dto.getCiudad());
            stmt.setString(5, dto.getFijo());
            stmt.setString(6, dto.getCelular());
            stmt.setString(7, dto.getEmail());
            stmt.setString(8, dto.getSitio_web());
            stmt.setString(9, dto.getDescripcion());
            stmt.setString(10, dto.getUrl_imagen());
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
    public ArrayList<EntidadDTO> consultarEntidad(String dato, String tipo) throws Exception {
        ArrayList<EntidadDTO> list = new ArrayList();
        conn = Conexion.conectar();
        PreparedStatement stmt = null;
        EntidadDTO entidad = null;
        try {
            if (tipo.equals("nombre")) {
                stmt = conn.prepareStatement("SELECT * FROM entidad WHERE ent_nombre LIKE '%"+ dato+"%'");
                ResultSet res = stmt.executeQuery();
                while (res.next()) {
                    entidad = new EntidadDTO(res.getString(1), res.getString(2), res.getString(3), res.getString(4), res.getString(5), res.getString(8));
                    list.add(entidad);
                }
                stmt.close();
                res.close();
            } else if (tipo.equals("nit")) {
                stmt = conn.prepareStatement("SELECT * FROM entidad WHERE ent_nit="+ dato);
                ResultSet res = stmt.executeQuery();
                while (res.next()) {
                    entidad = new EntidadDTO();
                    entidad.setNombre(res.getString(1));
                    entidad.setNit(res.getString(2));
                    entidad.setDireccion(res.getString(3));
                    entidad.setCiudad(res.getString(4));
                    entidad.setFijo(res.getString(5));
                    entidad.setSitio_web(res.getString(8));
                    list.add(entidad);
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

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
            stmt = conn.prepareStatement("INSERT INTO `entidad_adscrita`(`entidad_nombre`, `entidad_NIT`, `entidad_dir`, `entidad_ciudad`, `entidad_fijo`, `entidad_movil`, `entidad_email`, `entidad_website`) VALUES (?,?,?,?,?,?,?,?);");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getNit());
            stmt.setString(3, dto.getDireccion());
            stmt.setString(4, dto.getCiudad());
            stmt.setString(5, dto.getFijo());
            stmt.setString(6, dto.getCelular());
            stmt.setString(7, dto.getEmail());
            stmt.setString(8, dto.getSitio_web());
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
                stmt = conn.prepareStatement("SELECT * FROM entidad_adscrita WHERE entidad_nombre LIKE '%"+ dato+"%'");
                ResultSet res = stmt.executeQuery();
                while (res.next()) {
                    entidad = new EntidadDTO(res.getString(2), res.getString(3), res.getString(4), res.getString(5), res.getString(6), res.getString(7), res.getString(8), res.getString(9));
                    list.add(entidad);
                }
                stmt.close();
                res.close();
            } else if (tipo.equals("nit")) {
                stmt = conn.prepareStatement("SELECT * FROM entidad WHERE ent_nit="+ dato);
                ResultSet res = stmt.executeQuery();
                while (res.next()) {
                    entidad = new EntidadDTO();
                    entidad.setNombre(res.getString(2));
                    entidad.setNit(res.getString(3));
                    entidad.setDireccion(res.getString(4));
                    entidad.setCiudad(res.getString(5));
                    entidad.setFijo(res.getString(6));
                    entidad.setCelular(res.getString(7));
                    entidad.setEmail(res.getString(8));
                    entidad.setSitio_web(res.getString(9));
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

    @Override
    public boolean asociarServicio(String entidad_nombre, ArrayList<String> servicios) throws Exception {
        conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        int entidad_id = 0;
        ArrayList<Integer> servicios_id = null;
        try{
            servicios_id = new ArrayList();
            for(String s : servicios){
                System.out.println(s);
                stmt = conn.prepareStatement("SELECT servicio.servicio_id FROM servicio WHERE servicio.servicio_nombre = ?");
                stmt.setString(1, s);
                ResultSet rs = stmt.executeQuery();
                while(rs.next()){
                    servicios_id.add(rs.getInt(1));
                }
                rs.close();
            }
            
            stmt = conn.prepareStatement("SELECT entidad_adscrita.entidad_id FROM entidad_adscrita WHERE entidad_adscrita.entidad_nombre = ?");
            stmt.setString(1, entidad_nombre);
            ResultSet rs2 = stmt.executeQuery();
            while(rs2.next()){
                entidad_id = rs2.getInt(1);
            }
            rs2.close();
            
            int iterator = 0;
            for(int i : servicios_id){
                stmt = conn.prepareStatement("INSERT INTO `ufps_1`.`entidad_x_servicio`(`entidad_id`, `servicio_id`) VALUES(?,?)");
                stmt.setInt(1, entidad_id);
                stmt.setInt(2, i);
                
                int sc = stmt.executeUpdate();
                if(sc > 0){
                    iterator++;
                }
            }
            
            if(iterator == servicios_id.size()){
                exito = true;
                stmt.close();
            }
            
            stmt.close();
        }catch(Exception ex){
            System.err.println(ex);
        }finally{
            if(conn != null)
                conn.close();
        }
        return exito;
    }

  
    
}

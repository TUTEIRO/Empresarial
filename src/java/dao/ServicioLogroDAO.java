/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.LogroDTO;
import dto.ServicioDTO;
import interfaces.IServicioLogroDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import util.Conexion;

/**
 *
 * @author Mauricio
 */
public class ServicioLogroDAO implements IServicioLogroDAO{
    
    private Connection conn = null;

    @Override
    public boolean crearServicio(String servicio) throws Exception {
        conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        try{
            stmt = conn.prepareStatement("INSERT INTO `ufps_1`.`servicio`(`servicio_nombre`) VALUES(?)");
            stmt.setString(1, servicio);
            int total = stmt.executeUpdate();
            if(total > 0){
                stmt.close();
                exito = true;
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

    @Override
    public boolean crearLogro(String logro) throws Exception {
        conn = Conexion.conectar();
        boolean exito = false;
        PreparedStatement stmt = null;
        try{
            stmt = conn.prepareStatement("INSERT INTO `ufps_1`.`logro`(`logro_nombre`) VALUES(?)");
            stmt.setString(1, logro);
            int total = stmt.executeUpdate();
            if(total > 0){
                stmt.close();
                exito = true;
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

    @Override
    public ArrayList<ServicioDTO> listarServicios() throws Exception {
        conn = Conexion.conectar();
        ArrayList<ServicioDTO> servicios = new ArrayList();
        PreparedStatement stmt = null;
        try{
            stmt = conn.prepareStatement("SELECT * from servicio WHERE 1");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                ServicioDTO dto = new ServicioDTO();
                dto.setId(rs.getInt(1));
                dto.setServicio(rs.getString(2));
                servicios.add(dto);
            }
            stmt.close();
            rs.close();
        }catch(Exception ex){
            System.err.println(ex);
        }finally{
            if(conn != null)
                conn.close();
        }
        return servicios;
    }

    @Override
    public ArrayList<LogroDTO> listarLogros() throws Exception {
        conn = Conexion.conectar();
        ArrayList<LogroDTO> logros = new ArrayList();
        PreparedStatement stmt = null;
        try{
            stmt = conn.prepareStatement("SELECT * from logro WHERE 1");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                LogroDTO dto = new LogroDTO();
                dto.setId(rs.getInt(1));
                dto.setLogro(rs.getString(2));
                logros.add(dto);
            }
            stmt.close();
            rs.close();
        }catch(Exception ex){
            System.err.println(ex);
        }finally{
            if(conn != null)
                conn.close();
        }
        return logros;
    }

    @Override
    public boolean asociar(ServicioDTO servicio, LogroDTO logro) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

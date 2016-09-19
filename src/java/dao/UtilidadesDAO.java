/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import interfaces.IUtilidadesDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import util.Conexion;

/**
 *
 * @author quagg
 */
public class UtilidadesDAO implements IUtilidadesDAO {

    private Connection conn;

    @Override
    public boolean asociar(String contacto_dato, String empresa_dato, String form_dato) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<String> cargarMun(String dept) throws Exception {
        ArrayList<String> mun = new ArrayList();
        conn = Conexion.conectar();
        PreparedStatement stmt = null;
        int number = findNumber(dept);
        try {
            stmt = conn.prepareStatement("SELECT * FROM `municipios` WHERE `departamento` = " + number);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                mun.add(rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return mun;
    }

    @Override
    public ArrayList<String> cargarDptos() throws Exception {
        ArrayList<String> dptos = new ArrayList();
        conn = Conexion.conectar();
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("SELECT * FROM `departamentos`");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                dptos.add(rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return dptos;
    }

    private int findNumber(String dpto) {
        int number = 0;
        switch (dpto) {
            case "Amazonas":
                number = 1;
                break;
            case "Antioquia":
                number = 2;
                break;
            case "Arauca":
                number = 3;
                break;
            case "Atlántico":
                number = 4;
                break;
            case "Bolívar":
                number = 5;
                break;
            case "Boyacá":
                number = 6;
                break;
            case "Caldas":
                number = 7;
                break;
            case "Caquetá":
                number = 8;
                break;
            case "Casanare":
                number = 9;
                break;
            case "Cauca":
                number = 10;
                break;
            case "Cesar":
                number = 11;
                break;
            case "Chocó":
                number = 12;
                break;
            case "Córdoba":
                number = 13;
                break;
            case "Cundinamarca":
                number = 14;
                break;
            case "Güainia":
                number = 15;
                break;
            case "Guaviare":
                number = 16;
                break;
            case "Huila":
                number = 17;
                break;
            case "La Guajira":
                number = 18;
                break;
            case "Magdalena":
                number = 19;
                break;
            case "Meta":
                number = 20;
                break;
            case "Nariño":
                number = 21;
                break;
            case "Norte de Santander":
                number = 22;
                break;
            case "Putumayo":
                number = 23;
                break;
            case "Quindio":
                number = 24;
                break;
            case "Risaralda":
                number = 25;
                break;
            case "San Andrés y Providencia":
                number = 26;
                break;
            case "Santander":
                number = 27;
                break;
            case "Sucre":
                number = 28;
                break;
            case "Tolima":
                number = 29;
                break;
            case "Valle del Cauca":
                number = 30;
                break;
            case "Vaupés":
                number = 31;
                break;
            case "Vichada":
                number = 32;
                break;
        }
        return number;
    }

    @Override
    public ArrayList<String> cargarTipoAgenciaTuristica() throws Exception {
        ArrayList<String> agencias = new ArrayList();
        conn = Conexion.conectar();
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("SELECT * FROM `tur_tipo`");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                agencias.add(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return agencias;
    }

    @Override
    public ArrayList<String> cargarTipoAlojamientoTuristico() throws Exception {
        ArrayList<String> agencias = new ArrayList();
        conn = Conexion.conectar();
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("SELECT * from `tur_tipo_alojamiento`");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                agencias.add(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return agencias;
    }

    @Override
    public ArrayList<String> cargarTipoTurismo() throws Exception {
        ArrayList<String> agencias = new ArrayList();
        conn = Conexion.conectar();
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("SELECT * from `tur_tipo_turismo`");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                agencias.add(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return agencias;
    }

    @Override
    public ArrayList<String> cargarEtnicidad() throws Exception {
        ArrayList<String> etnias = new ArrayList();
        conn = Conexion.conectar();
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement("SELECT * from `contacto_etnicidad`");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                etnias.add(rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return etnias;
    }
}

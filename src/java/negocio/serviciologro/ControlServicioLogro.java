/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.serviciologro;

import dao.ServicioLogroDAO;
import dto.LogroDTO;
import dto.ServicioDTO;
import java.util.ArrayList;

/**
 *
 * @author Mauricio
 */
public class ControlServicioLogro {
    
    public boolean crearServicio(String servicio) throws Exception{
        ServicioLogroDAO dao = new ServicioLogroDAO();
        return dao.crearServicio(servicio);
    }
    
    public boolean crearLogro(String logro) throws Exception{
        ServicioLogroDAO dao = new ServicioLogroDAO();
        return dao.crearLogro(logro);
    }
    
    public ArrayList<ServicioDTO> listarServicios() throws Exception{
        ServicioLogroDAO dao = new ServicioLogroDAO();
        return dao.listarServicios();
    }
    
    public ArrayList<LogroDTO> listarLogros() throws Exception{
        ServicioLogroDAO dao = new ServicioLogroDAO();
        return dao.listarLogros();
    }
}

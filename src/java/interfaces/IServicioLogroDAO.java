/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import dto.LogroDTO;
import dto.ServicioDTO;
import java.util.ArrayList;

/**
 *
 * @author Mauricio
 */
public interface IServicioLogroDAO {
    
    public boolean crearServicio(String servicio) throws Exception;
    public boolean crearLogro(String logro) throws Exception;
    public ArrayList<ServicioDTO> listarServicios() throws Exception;
    public ArrayList<LogroDTO> listarLogros() throws Exception;
    public boolean asociar(String servicio, ArrayList<String> logro) throws Exception;
    public ArrayList<ServicioDTO> listarServiciosEmpresa(String empresa) throws Exception;
    public ArrayList<LogroDTO> listarLogroServicio(String servicio) throws Exception;
}

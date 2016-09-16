/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;
import dto.TuristicaDTO;

/**
 *
 * @author quagg
 */
public interface ITuristicaDAO {
    
    public boolean registrarTuristica(TuristicaDTO dto) throws Exception;
    public TuristicaDTO consultarTuristica(String dato) throws Exception;
}

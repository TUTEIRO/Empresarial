/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.ArrayList;

/**
 *
 * @author quagg
 */
public interface IUtilidadesDAO {
    
    public ArrayList<String> cargarDptos() throws Exception;
    public ArrayList<String> cargarMun(String dept) throws Exception;
    public boolean asociar(String contacto_dato, String empresa_dato, String form_dato) throws Exception;
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.utilidades;

import dao.UtilidadesDAO;
import java.util.ArrayList;

/**
 *
 * @author quagg
 */
public class ControlUtilidades {
    
    public ArrayList<String> cargarMun(String dpto) throws Exception{
        UtilidadesDAO dao = new UtilidadesDAO();
        return dao.cargarMun(dpto);
    }
    
    public ArrayList<String> cargarDptos() throws Exception{
        UtilidadesDAO dao = new UtilidadesDAO();
        return dao.cargarDptos();
    }
    
    public boolean asociar(String contacto_dato, String empresa_dato, String form_dato) throws Exception{
        UtilidadesDAO dao = new UtilidadesDAO();
        return dao.asociar(contacto_dato, empresa_dato, form_dato);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;

/**
 *
 * @author quagg
 */
public class Tester {
    
    public static void main(String[] args) throws Exception {
        UtilidadesDAO dao = new UtilidadesDAO();
        ArrayList<String> dept = dao.cargarDptos();
        int a = 0;
        for(String d : dept){
            ArrayList<String> mun = dao.cargarMun(d);
            for(String m : mun){
                System.out.println(m);
            }
            System.out.println("----" + a);
            a++;
        } 
    }
}

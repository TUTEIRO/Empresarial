/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Mauricio
 */
public class LogroDTO {
    
    private int id;
    private String logro;

    public LogroDTO() {
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setLogro(String logro) {
        this.logro = logro;
    }

    public String getLogro() {
        return logro;
    }
      
}

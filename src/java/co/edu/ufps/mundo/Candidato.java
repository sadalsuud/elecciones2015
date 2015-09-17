/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.mundo;

/**
 *
 * @author sadalsuud
 */
public class Candidato {
    
    private String documento;
    private String nombre;
    private String partido;
    private String numero;
    private int votos;
    

    public Candidato() {        }
    
    public Candidato(String documento, String nombre, String partido, String numero) {
        this.documento = documento;
        this.nombre = nombre;
        this.partido = partido;
        this.numero = numero;
        this.votos = 0;
    }
    
    public void registrarVoto(){
        this.votos++;
    }
    
    
    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPartido() {
        return partido;
    }

    public void setPartido(String partido) {
        this.partido = partido;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public int getVotos() {
        return votos;
    }

    public void setVotos(int votos) {
        this.votos = votos;
    }
    
    
    
    
    
    
    
    
}

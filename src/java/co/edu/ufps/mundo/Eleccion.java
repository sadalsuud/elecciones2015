/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.mundo;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author sadalsuud
 */
public class Eleccion {

    private static Map<Integer, Candidato> candidatos = new HashMap<>();

    public static Map<Integer, Candidato> getCandidatos() {
        return candidatos;
    }

    
}

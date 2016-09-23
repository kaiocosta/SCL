/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.util.ArrayList;

/**
 *
 * @author Aluno
 */
public class Locadora {
    private String data;
    private int id_locadora;
    private ArrayList locacao = new ArrayList();

    public Locadora(String data, int id_locadora) {
        this.data = data;
        this.id_locadora = id_locadora;
    }
    
    
    
    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public ArrayList getLocacao() {
        return locacao;
    }

    public void setLocacao(ArrayList locacao) {
        this.locacao = locacao;
    }
}

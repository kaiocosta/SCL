/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.sql.Array;
import java.util.ArrayList;

/**
 *
 * @author Aluno
 */
public class Cliente extends Pessoa {
  
    private ArrayList dependentes = new ArrayList();
    private int id_cliente;

    public Cliente(String nome, String sexo, String dataDeNasc, String estadoCivil, String cpf, String rg, int id_cliente) {
        this.setNome(nome);
        this.setSexo(sexo);
        this.setDataDeNasc(dataDeNasc);
        this.setEstadoCivil(estadoCivil);
        this.setCpf(cpf);
        this.setRg(rg);
        this.id_cliente = id_cliente;
    }

    public ArrayList getDependentes() {
        return dependentes;
    }

    public void setDependentes(ArrayList dependentes) {
        this.dependentes = dependentes;
    }
}

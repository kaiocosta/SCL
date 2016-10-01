
package modelo;

import dao.ClienteDAO;
import dao.FilmeDAO;
import java.sql.Array;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Cliente extends Pessoa {
    
    private int codCliente;
    
    private Endereco endereco;
    private int codEndereco;
    private Contato contato;
    private int codContato;
    private Dependente dependente;
    private int codDependente;
    
    private ArrayList dependentes;
    
    public Cliente(int codCliente, String nome, String sexo, String dataDeNasc, String estadoCivil, String cpf, String rg, Endereco endereco, Contato contato, Dependente dependente) {
        
        this.codCliente = codCliente;
        this.setNome(nome);
        this.setSexo(sexo);
        this.setDataDeNasc(dataDeNasc);
        this.setEstadoCivil(estadoCivil);
        this.setCpf(cpf);
        this.setRg(rg);
        this.endereco = endereco;
        this.contato = contato;
        this.dependente = dependente;
        
    }
    
    public static List<Cliente> obterClientes() 
        throws ClassNotFoundException, SQLException {
        
        return ClienteDAO.obterClientes();
    } 

    public int getCodEndereco() {
        return codEndereco;
    }

    public void setCodEndereco(int codEndereco) {
        this.codEndereco = codEndereco;
    }

    public int getCodContato() {
        return codContato;
    }

    public void setCodContato(int codContato) {
        this.codContato = codContato;
    }

    public Dependente getDependente() {
        return dependente;
    }

    public void setDependente(Dependente dependente) {
        this.dependente = dependente;
    }

    public int getCodDependente() {
        return codDependente;
    }

    public void setCodDependente(int codDependente) {
        this.codDependente = codDependente;
    }
    
    public int getCodCliente() {
        return codCliente;
    }

    public void setCodCliente(int codCliente) {
        this.codCliente = codCliente;
    }

    public ArrayList getDependentes() {
        return dependentes;
    }

    public void setDependentes(ArrayList dependentes) {
        this.dependentes.add(dependentes);
    }
}

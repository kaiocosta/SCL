
package modelo;

import dao.ClienteDAO;
import dao.FilmeDAO;
import java.sql.Array;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Cliente {
    
    private int codCliente;
    private String nome;
    private int codEndereco;
    private int codContato;
    private int codDependente;
    
    
    public Cliente(int codCliente, String nome, int codEndereco, int codContato, int codDependente) {
        
        this.codCliente = codCliente;
        this.nome = nome;
        this.codEndereco = codEndereco;
        this.codContato = codContato;
        this.codDependente = codDependente;
    }
    
    public static List<Cliente> obterClientes() 
        throws ClassNotFoundException, SQLException {
        return ClienteDAO.obterClientes();
    } 
    
   

    /**
     * @return the codCliente
     */
    public int getCodCliente() {
        return codCliente;
    }

    /**
     * @param codCliente the codCliente to set
     */
    public void setCodCliente(int codCliente) {
        this.codCliente = codCliente;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the codEndereco
     */
    public int getCodEndereco() {
        return codEndereco;
    }

    /**
     * @param codEndereco the codEndereco to set
     */
    public void setCodEndereco(int codEndereco) {
        this.codEndereco = codEndereco;
    }

    /**
     * @return the codContato
     */
    public int getCodContato() {
        return codContato;
    }

    /**
     * @param codContato the codContato to set
     */
    public void setCodContato(int codContato) {
        this.codContato = codContato;
    }

    /**
     * @return the codDependente
     */
    public int getCodDependente() {
        return codDependente;
    }

    /**
     * @param codDependente the codDependente to set
     */
    public void setCodDependente(int codDependente) {
        this.codDependente = codDependente;
    }

}

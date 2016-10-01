
package modelo;

import java.util.ArrayList;

public class Locadora {
    
    private int codLocadora;
    private String dataLocacao;
    private Usuario usuario;
    private int codUsuario;
    private Cliente cliente;
    private int codCliente;
    private Filme filme;
    private int codFilme;

    public Locadora( int codLocadora, String dataLocacao, Usuario usuario, Cliente cliente,Filme filme) {
        
        this.codLocadora = codLocadora;
        this.dataLocacao = dataLocacao;
        this.codUsuario = codUsuario;
        this.codFilme = codFilme;
        this.codCliente = codCliente;
        
    }
    
    private ArrayList<Filme> locacoes;
    private ArrayList<Cliente> clientes;
    private ArrayList<Usuario> usuarios;

    public ArrayList<Filme> getLocacoes() {
        return locacoes;
    }

    public void setLocacoes(ArrayList<Filme> locacoes) {
        this.locacoes.add(filme);
    }

    public ArrayList<Cliente> getClientes() {
        return clientes;
    }

    public void setClientes(ArrayList<Cliente> clientes) {
        this.clientes.add(cliente);
    }

    public ArrayList<Usuario> getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(ArrayList<Usuario> usuarios) {
        this.usuarios.add(usuario);
    }
   
    public int getCodUsuario() {
        return codUsuario;
    }

    public void setCodUsuario(int codUsuario) {
        this.codUsuario = codUsuario;
    }

    public int getCodFilme() {
        return codFilme;
    }

    public void setCodFilme(int codFilme) {
        this.codFilme = codFilme;
    }

    public int getCodCliente() {
        return codCliente;
    }

    public void setCodCliente(int codCliente) {
        this.codCliente = codCliente;
    }
    
    public String getData() {
        return dataLocacao;
    }

    public void setData(String data) {
        this.dataLocacao = data;
    }

}

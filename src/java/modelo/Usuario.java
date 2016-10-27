
package modelo;

import dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.List;

public class Usuario{

    private int codUsuario;
    private String nome;
    private String sexo;
    private String dataDeNasc;
    private String estadoCivil;
    private String cpf;
    private String rg;
    private String login;
    private String senha;
    private String cep;
    private String bairro;
    private String logradouro;
    private String numero;
    private String complemento;
    private String estado;
    private String cidade;
    private String telefone1;
    private String telefone2;
    private String celular;
    private String email;
    
    
    
    public Usuario(int codUsuario, String nome, String sexo, String dataDeNasc, String estadoCivil, 
            String cpf, String rg, String login, String senha, 
            String cep, String bairro, String logradouro, String numero, String complemento, String estado, String cidade, 
            String telefone1, String telefone2, String celular, String email) {
        
        this.codUsuario = codUsuario;
        this.nome = nome;
        this.sexo= sexo;
        this.dataDeNasc = dataDeNasc;
        this.estadoCivil = estadoCivil;
        this.cpf = cpf;
        this.rg = rg;
        this.login = login;
        this.senha = senha;
        this.cep = cep;
        this.bairro = bairro;
        this.logradouro = logradouro;
        this.numero = numero;
        this.complemento = complemento;
        this.estado = estado;
        this.cidade = cidade;
        this.telefone1 = telefone1;
        this.telefone2 = telefone2;
        this.celular = celular;
        this.email = email;
        
    }
    
    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getTelefone1() {
        return telefone1;
    }

    public void setTelefone1(String telefone1) {
        this.telefone1 = telefone1;
    }

    public String getTelefone2() {
        return telefone2;
    }

    public void setTelefone2(String telefone2) {
        this.telefone2 = telefone2;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    public int getCodUsuario(){
        return this.codUsuario;
    }
    
    public void setCodUsuario(int codUsuario) {
        this.codUsuario = codUsuario;
    }
    
    public void gravar() throws SQLException, ClassNotFoundException {
        UsuarioDAO.gravar(this);    
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getDataDeNasc() {
        return dataDeNasc;
    }

    public void setDataDeNasc(String dataDeNasc) {
        this.dataDeNasc = dataDeNasc;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }
    
    public static List<Usuario> obterUsuarios() 
        throws ClassNotFoundException, SQLException {
         return UsuarioDAO.obterUsuarios();
    }
    public static Usuario obterUsuario(int codUsuario) 
        throws ClassNotFoundException, SQLException {
            return UsuarioDAO.obterUsuario(codUsuario);
        }
    
}
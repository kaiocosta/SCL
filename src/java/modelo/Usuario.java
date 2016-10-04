
package modelo;

import dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.List;

public class Usuario extends Pessoa{

    public static List<Usuario> obterUsuarios() 
        throws ClassNotFoundException, SQLException {
         return UsuarioDAO.obterUsuarios();
    }
    
    private int codUsuario;
    private String login;
    private String senha;
    
    private Endereco endereco;
    private int codEndereco;
    private Contato contato;
    private int codContato;
    
    public Usuario(int codUsuario, String nome, String sexo, String dataDeNasc, String estadoCivil, String cpf, String rg, String login, String senha, Endereco endereco, Contato contato) {
        
        this.codUsuario = codUsuario;
        this.setNome(nome);
        this.setSexo(sexo);
        this.setDataDeNasc(dataDeNasc);
        this.setEstadoCivil(estadoCivil);
        this.setCpf(cpf);
        this.setRg(rg);
        this.login = login;
        this.senha = senha;
        this.endereco = endereco;
        this.contato = contato;
        
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
}

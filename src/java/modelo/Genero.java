
package modelo;

import dao.GeneroDAO;
import java.sql.SQLException;
import java.util.List;

public class Genero {
   
    private int codGenero;
    private String nome;
    private String descricao;
   

    public Genero(int codGenero, String nome, String descricao) {
        
        this.codGenero = codGenero;
        this.nome = nome;
        this.descricao = descricao;
    }
    
    public static List<Genero> obterGeneros()
        throws ClassNotFoundException, SQLException {
         return GeneroDAO.obterGeneros();
    }
    
    
    public static Genero obterGenero(int codGenero) 
        throws ClassNotFoundException, SQLException {
            return GeneroDAO.obterGenero(codGenero);
        }
    
    public String getNome() {
        return nome;
    }

    
    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getCodGenero() {
        return codGenero;
    }

    public void setCodGenero(int codGenero) {
        this.codGenero = codGenero;
    }
    
    public void gravar() throws SQLException, ClassNotFoundException{
        GeneroDAO.gravar(this);
    }
     
    public void alterar() throws SQLException, ClassNotFoundException{
        GeneroDAO.alterar(this);
    }
    
    public void excluir() throws SQLException, ClassNotFoundException{
        GeneroDAO.excluir(this);
    }
    
}

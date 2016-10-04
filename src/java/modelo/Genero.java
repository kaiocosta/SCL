
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

    /**
     * @return the codGenero
     */
    public int getCodGenero() {
        return codGenero;
    }

    /**
     * @param codGenero the codGenero to set
     */
    public void setCodGenero(int codGenero) {
        this.codGenero = codGenero;
    }
    
}

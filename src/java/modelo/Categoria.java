package modelo;

import dao.CategoriaDAO;
import java.sql.SQLException;
import java.util.List;

public class Categoria {

    private int codCategoria;
    private String nome;    
    private String descricao;
    private String periodoDeTroca;
    private String proxCategoria;
    
    public Categoria(int codCategoria, String nome, String descricao, String periodoDeTroca, String proxCategoria) {
        
        this.codCategoria = codCategoria;
        this.nome = nome;
        this.descricao = descricao;
        this.periodoDeTroca = periodoDeTroca;
        this.proxCategoria = proxCategoria;
        
    }
    
    public int getCodCategoria(){
        return this.codCategoria;
    }

    public void setCodCategoria(int codCategoria) {
        this.codCategoria = codCategoria;
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

    public String getPeriodoDeTroca() {
        return periodoDeTroca;
    }

   
    public String getProxCategoria() {
        return proxCategoria;
    }

    public void setProxCategoria(String proxCategoria) {
        this.proxCategoria = proxCategoria;
    }
    
    public static List<Categoria> obterCategorias() 
        throws ClassNotFoundException, SQLException {
         return CategoriaDAO.obterCategorias();
        }

    /**
     * @param periodoDeTroca the periodoDeTroca to set
     */
    public void setPeriodoDeTroca(String periodoDeTroca) {
        this.periodoDeTroca = periodoDeTroca;
    }

}

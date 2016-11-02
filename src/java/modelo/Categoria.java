package modelo;

import dao.CategoriaDAO;
import java.sql.SQLException;
import java.util.List;

public class Categoria {

    private int codCategoria;
    private String nome;    
    private String descricao;
    private String periodoTrocaCategoria;
    private String proximaCategoria;
    
    public Categoria(int codCategoria, String nome, String descricao, String periodoTrocaCategoria, String proximaCategoria) {
        
        this.codCategoria = codCategoria;
        this.nome = nome;
        this.descricao = descricao;
        this.periodoTrocaCategoria = periodoTrocaCategoria;
        this.proximaCategoria = proximaCategoria;
        
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

    public String getPeriodoTrocaCategoria() {
        return periodoTrocaCategoria;
    }

   
    public String getProximaCategoria() {
        return proximaCategoria;
    }

    public void setProximaCategoria(String proximaCategoria) {
        this.proximaCategoria = proximaCategoria;
    }
    
    public static List<Categoria> obterCategorias() 
        throws ClassNotFoundException, SQLException {
         return CategoriaDAO.obterCategorias();
        }
    
    public static Categoria obterCategoria(int codCategoria) 
        throws ClassNotFoundException, SQLException {
            return CategoriaDAO.obterCategoria(codCategoria);
        }
    
    
    public void setPeriodoTrocaCategoria(String periodoTrocaCategoria) {
        this.periodoTrocaCategoria = periodoTrocaCategoria;
    }

    public void gravar() throws SQLException, ClassNotFoundException {
        CategoriaDAO.gravar(this);    
    }

    public void alterar() throws SQLException, ClassNotFoundException {
        CategoriaDAO.alterar(this);
    }
}

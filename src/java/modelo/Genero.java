
package modelo;

public class Genero {
   
    private int codGenero;
    private String nome;
    private String descricao;
   

    public Genero(int codGenero, String nome, String descricao) {
        
        this.codGenero = codGenero;
        this.nome = nome;
        this.descricao = descricao;
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
}

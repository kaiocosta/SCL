
package modelo;

public class TipoDeMidia {
    
    private int codTipoDeMidia;
    private String nome;
    private String descricao;

    public TipoDeMidia(int codTipoDeMidia, String nome, String descricao) {
        
        this.codTipoDeMidia = codTipoDeMidia;
        this.nome = nome;
        this.descricao = descricao;
        
    }

    public int getCodTipoDeMidia() {
        return codTipoDeMidia;
    }

    public void setCodTipoDeMidia(int codTipoDeMidia) {
        this.codTipoDeMidia = codTipoDeMidia;
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

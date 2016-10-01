
package modelo;

public class Dependente {
    
    private int codDependente;
    private String nome;
    private String grauDeParentesco;
    private String dataDeNascimento;
    

    public Dependente(int codDependente, String nome, String grauDeParentesco, String dataDeNascimento) {
        
        this.codDependente = codDependente;
        this.nome = nome;
        this.grauDeParentesco = grauDeParentesco;
        this.dataDeNascimento = dataDeNascimento;
        
    }
   
    public int getCodDependente() {
        return codDependente;
    }
    
    public void setCodDependente(int codDependente) {
        this.codDependente = codDependente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getGrauDeParentesco() {
        return grauDeParentesco;
    }

    public void setGrauDeParentesco(String grauDeParentesco) {
        this.grauDeParentesco = grauDeParentesco;
    }

    public String getDataDeNascimento() {
        return dataDeNascimento;
    }

    public void setDataDeNascimento(String dataDeNascimento) {
        this.dataDeNascimento = dataDeNascimento;
    } 
}

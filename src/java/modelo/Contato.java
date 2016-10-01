
package modelo;

public class Contato {
    
    private int codContato;
    private String telefone1;
    private String telefone2;
    private String celular;
    private String email;

    
    public Contato(int codContato, String telefone1, String telefone2, String celular, String email) {
        
        this.codContato = codContato;
        this.telefone1 = telefone1;
        this.telefone2 = telefone2;
        this.celular = celular;
        this.email = email;
     
    }

    public int getCodContato() {
        return codContato;
    }

    public void setCodContato(int codContato) {
        this.codContato = codContato;
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
          
}

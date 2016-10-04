
package modelo;

import dao.FornecedorDAO;
import java.sql.SQLException;
import java.util.List;

public class Fornecedor {

    
    private int codFornecedor;
    private String razaoSocial;
    private String nomeFantasia;
    private String cnpj;
    private String nomeDoContato;

    private Endereco endereco;
    private int codEndereco;
    private Contato contato;
    private int codContato;

    public Fornecedor(int codFornecedor, String razaoSocial, String nomeFantasia, String cnpj, String nomeDoContato, Endereco endereco, Contato contato) {
        
        this.codFornecedor = codFornecedor;
        this.razaoSocial = razaoSocial;
        this.nomeFantasia = nomeFantasia;
        this.cnpj = cnpj;
        this.nomeDoContato = nomeDoContato;
        this.endereco = endereco;
        this.contato = contato;
    }
    
    public static List<Fornecedor> obterFornecedores() 
        throws ClassNotFoundException, SQLException {
        
        return FornecedorDAO.obterFornecedores();
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public String getNomeFantasia() {
        return nomeFantasia;
    }

    public void setNomeFantasia(String nomeFantasia) {
        this.nomeFantasia = nomeFantasia;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getNomeDoContato() {
        return nomeDoContato;
    }

    public void setNomeDoContato(String nomeDoContato) {
        this.nomeDoContato = nomeDoContato;
    }
    public Contato getContato() {
        return contato;
    }

    public void setContato(Contato contato) {
        this.contato = contato;
    }

    public Endereco getEndereco() {
        return endereco;
    }
    
    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public int getCodContato() {
        return codContato;
    }

    public void setCodContato(int codContato) {
        this.codContato = codContato;
    }

    public int getCodEndereco() {
        return codEndereco;
    }
    
    public void setCodEndereco(int codEndereco) {
        this.codEndereco = codEndereco;
    }

    /**
     * @return the codFornecedor
     */
    public int getCodFornecedor() {
        return codFornecedor;
    }

    /**
     * @param codFornecedor the codFornecedor to set
     */
    public void setCodFornecedor(int codFornecedor) {
        this.codFornecedor = codFornecedor;
    }
}

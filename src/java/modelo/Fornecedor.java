
package modelo;

import dao.FornecedorDAO;
import java.sql.SQLException;
import java.util.List;

public class Fornecedor {

    
    private int codFornecedor;
    private String razaoSocial;
    private String nomeFantasia;
    private String cnpj;
    private String nomeContato;
    private String cep;
    private String bairro;
    private String logradouro;
    private String numero;
    private String complemento;
    private String estado;
    private String cidade;
    private String telefone1;
    private String telefone2;
    private String celular;
    private String email;

    public Fornecedor(int codFornecedor, String razaoSocial, String nomeFantasia, String cnpj, String nomeContato,
                      String cep, String bairro, String logradouro, String numero, String complemento, String estado, String cidade, 
                      String telefone1, String telefone2, String celular, String email) {
        
        this.codFornecedor = codFornecedor;
        this.razaoSocial = razaoSocial;
        this.nomeFantasia = nomeFantasia;
        this.cnpj = cnpj;
        this.nomeContato = nomeContato;
        this.cep = cep;
        this.bairro = bairro;
        this.logradouro = logradouro;
        this.numero = numero;
        this.complemento = complemento;
        this.estado = estado;
        this.cidade = cidade;
        this.telefone1 = telefone1;
        this.telefone2 = telefone2;
        this.celular = celular;
        this.email = email;
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

    public String getNomeContato() {
        return nomeContato;
    }

    public void setNomeContato(String nomeContato) {
        this.nomeContato = nomeContato;
    }
  
    public int getCodFornecedor() {
        return codFornecedor;
    }

    public void setCodFornecedor(int codFornecedor) {
        this.codFornecedor = codFornecedor;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getTelefone1() {
        return telefone1;
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
    
    public void gravar() throws SQLException, ClassNotFoundException {
        FornecedorDAO.gravar(this);    
    }
}

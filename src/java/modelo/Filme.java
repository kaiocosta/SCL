package modelo;

import dao.FilmeDAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Filme {
    private int codFilme;
    private String titulo;
    private String tituloOriginal;
    private String nomeDiretor;
    private String nomeAtorPrincipal;
    private String nomePremiacoes;
    private String anoProducao;
    private String anoLancamento;
    private Categoria categoria;
    private int codCategoria;
    private Genero genero;
    private int codGenero;
    private TipoDeMidia tipoDeMidia;
    private int codTipoDeMidia;
    private Fornecedor fornecedor;
    private int codFornecedor;
    //private Cadastro cadastro; criar classe cadastro

    public Filme(int codFilme, String titulo, String tituloOriginal, String nomeDiretor, String nomeAtorPrincipal, String nomePremiacoes, String anoProducao, String anoLancamento, Categoria categoria, Genero genero, TipoDeMidia tipoDeMidia, Fornecedor fornecedor) {
        
        this.codFilme = codFilme;
        this.titulo = titulo;
        this.tituloOriginal = tituloOriginal;
        this.nomeDiretor = nomeDiretor;
        this.nomeAtorPrincipal = nomeAtorPrincipal;
        this.nomePremiacoes = nomePremiacoes;
        this.anoProducao = anoProducao;
        this.anoLancamento = anoLancamento;
        this.categoria = categoria;
        this.genero = genero;
        this.tipoDeMidia = tipoDeMidia;
        this.fornecedor = fornecedor;
        
    }
    
    public static List<Filme> obterFilmes() 
        throws ClassNotFoundException, SQLException {
         return FilmeDAO.obterFilmes();
    }
    
    public static Filme obterFilme(int codFilme) 
        throws ClassNotFoundException, SQLException {
            return FilmeDAO.obterFilme(codFilme);
        }
    
       
    public Categoria getCategoria() throws ClassNotFoundException, SQLException{
        if ((categoria == null) && (codCategoria != 0)) {
            categoria = Categoria.obterCategoria(codCategoria);
        }
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
 
    public int getCodFilme() {
        return codFilme;
    }

    public void setCodFilme(int id) {
        this.codFilme = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTituloOriginal() {
        return tituloOriginal;
    }

    public void setTituloOriginal(String tituloOriginal) {
        this.tituloOriginal = tituloOriginal;
    }

    public String getNomeDiretor() {
        return nomeDiretor;
    }

    public void setNomeDiretor(String nomeDiretor) {
        this.nomeDiretor = nomeDiretor;
    }

    public String getNomeAtorPrincipal() {
        return nomeAtorPrincipal;
    }

    public void setNomeAtorPrincipal(String nomeAtorPrincipal) {
        this.nomeAtorPrincipal = nomeAtorPrincipal;
    }

    public String getNomePremiacoes() {
        return nomePremiacoes;
    }

    public void setNomePremiacoes(String nomePremiacoes) {
        this.nomePremiacoes = nomePremiacoes;
    }

    public String getAnoProducao() {
        return anoProducao;
    }

    public void setAnoProducao(String anoProducao) {
        this.anoProducao = anoProducao;
    }

    public String getAnoLancamento() {
        return anoLancamento;
    }

    public void setAnoLancamento(String anoLancamento) {
        this.anoLancamento = anoLancamento;
    }

    public TipoDeMidia getTipoDeMidia() throws ClassNotFoundException, SQLException {
        if ((tipoDeMidia == null) && (codTipoDeMidia != 0)) {
            tipoDeMidia = TipoDeMidia.obterTipoDeMidia(codTipoDeMidia);
        }
        return tipoDeMidia;
    }

    public void setTipoDeMidia(TipoDeMidia tipoDeMidia) {
        this.tipoDeMidia = tipoDeMidia;
    }

    public Genero getGenero() throws SQLException, ClassNotFoundException {
        if ((genero == null) && (codGenero != 0)) {
            genero = Genero.obterGenero(codGenero);
        }
        return genero;
    }

    public void setGenero(Genero genero) {
        this.genero = genero;
    }
    
    public Fornecedor getFornecedor() throws ClassNotFoundException, SQLException {
        if ((fornecedor == null) && (codFornecedor != 0)) {
            fornecedor = Fornecedor.obterFornecedor(codFornecedor);
        }
        return fornecedor;
    }

    public void setFornecedor(Fornecedor fornecedor) {
        this.fornecedor = fornecedor;
    }

    public int getCodTipoDeMidia() {
        return codTipoDeMidia;
    }

    public void setCodTipoDeMidia(int CodTipoDeMidia) {
        this.codTipoDeMidia = codTipoDeMidia;
    }
    
    public int getCodGenero() {
        return codGenero;
    }

    public void setCodGenero(int codGenero) {
        this.codGenero = codGenero;
    }

    public int getCodFornecedor() {
        return codFornecedor;
    }

    public void setCodFornecedor(int codFornecedor) {
        this.codFornecedor = codFornecedor;
    }

    public int getCodCategoria() {
        return codCategoria;
    }

    public void setCodCategoria(int codCategoria) {
        this.codCategoria = codCategoria;
    }
    
    public void gravar() throws SQLException, ClassNotFoundException {
        FilmeDAO.gravar(this);    
    }
    
    public void alterar() throws SQLException, ClassNotFoundException {
        FilmeDAO.alterar(this);
    }
    
    public void excluir() throws SQLException, ClassNotFoundException{
        FilmeDAO.excluir(this);
    }
}

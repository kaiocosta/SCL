
package dao;

import static dao.BD.fecharConexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Filme;


public class FilmeDAO {
    
    public static List<Filme> obterFilmes() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Filme> filmes = new ArrayList();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from filmes");
            while (rs.next()){
                Filme filme = new Filme
                                   (rs.getInt("codFilme"),
                                    rs.getString("titulo"),
                                    rs.getString("tituloOriginal"),
                                    rs.getString("nomeDiretor"),
                                    rs.getString("nomeAtorPrincipal"),       
                                    rs.getString("nomePremiacoes"),       
                                    rs.getString("anoProducao"),
                                    rs.getString("anoLancamento"),
                                    null,
                                    null,
                                    null,
                                    null);
           filme.setGenero(GeneroDAO.obterGenero(Integer.parseInt(rs.getString("codGenero"))));
           filme.setCategoria(CategoriaDAO.obterCategoria(Integer.parseInt(rs.getString("codCategoria"))));
           filme.setTipoDeMidia(TipoDeMidiaDAO.obterTipoDeMidia(Integer.parseInt(rs.getString("codTipoDeMidia"))));
           filme.setFornecedor(FornecedorDAO.obterFornecedor(Integer.parseInt(rs.getString("codFornecedor"))));
           filmes.add(filme);
            }
        }
        catch(SQLException e){
                    e.printStackTrace();
            } finally {
                    fecharConexao(conexao, comando);
        }
        return filmes;
    }
    
    public static Filme obterFilme(int codFilme) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        Filme filme = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from filmes where codFilme = " + codFilme);
            rs.first();
            
            filme = new Filme
                        (rs.getInt("codFilme"),
                         rs.getString("titulo"),
                         rs.getString("tituloOriginal"),
                         rs.getString("nomeDiretor"),
                         rs.getString("nomeAtorPrincipal"),       
                         rs.getString("nomePremiacoes"),       
                         rs.getString("anoProducao"),
                         rs.getString("anoLancamento"),
                         null,
                         null,
                         null,
                         null);
           filme.setGenero(GeneroDAO.obterGenero(Integer.parseInt(rs.getString("codGenero"))));
           filme.setCategoria(CategoriaDAO.obterCategoria(Integer.parseInt(rs.getString("codCategoria"))));
           filme.setTipoDeMidia(TipoDeMidiaDAO.obterTipoDeMidia(Integer.parseInt(rs.getString("codTipoDeMidia"))));
           filme.setFornecedor(FornecedorDAO.obterFornecedor(Integer.parseInt(rs.getString("codFornecedor"))));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            fecharConexao(conexao, comando);
         }
        return filme;
    }
    
    public static void gravar(Filme filme) throws SQLException, ClassNotFoundException {
       Connection conexao = null;
       try{
           conexao = BD.getConexao();
           String sql = "insert into filmes (codFilme, titulo, tituloOriginal, nomeDiretor, nomeAtorPrincipal, nomePremiacoes, anoProducao, anoLancamento, codCategoria, codGenero, codTipoDeMidia, codFornecedor) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
           
           PreparedStatement comando = conexao.prepareStatement(sql);
           comando.setInt(1, filme.getCodFilme());
           comando.setString(2, filme.getTitulo());
           comando.setString(3, filme.getTituloOriginal());
           comando.setString(4, filme.getNomeDiretor());
           comando.setString(5, filme.getNomeAtorPrincipal());
           comando.setString(6, filme.getNomePremiacoes());
           comando.setString(7, filme.getAnoProducao());
           comando.setString(8, filme.getAnoLancamento());
           comando.setInt(9, filme.getCategoria().getCodCategoria());
           comando.setInt(10, filme.getGenero().getCodGenero());
           comando.setInt(11, filme.getTipoDeMidia().getCodTipoDeMidia());
           comando.setInt(12, filme.getFornecedor().getCodFornecedor());
           
           /*Se rolar chave estrangeira
            if(tabela.getchaveoutratabela() == null){
            comando.setNull(6, Types.NULL);
            } else {
            comando.setInt(6, tabela.getchaveoutratabela().getChaveEstrangeira)
            }
            */
           
           comando.execute();
           comando.close();
           conexao.close();
       }catch (SQLException e) {
        throw e;
    }
    }

    public static void alterar(Filme filme) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        try{
            conexao = BD.getConexao();
            String sql = "update filmes set titulo = ?, tituloOriginal = ?, nomeDiretor = ?, nomeAtorPrincipal = ?, nomePremiacoes = ?, anoProducao = ?, anoLancamento = ?, codCategoria = ?, codGenero = ?, codTipoDeMidia = ?, codFornecedor = ? where codFilme = ?";
           
            PreparedStatement comando = conexao.prepareStatement(sql);
            comando.setString(1, filme.getTitulo());
            comando.setString(2, filme.getTituloOriginal());
            comando.setString(3, filme.getNomeDiretor());
            comando.setString(4, filme.getNomeAtorPrincipal());
            comando.setString(5, filme.getNomePremiacoes());
            comando.setString(6, filme.getAnoProducao());
            comando.setString(7, filme.getAnoLancamento());
            comando.setInt(8, filme.getCategoria().getCodCategoria());
            comando.setInt(9, filme.getGenero().getCodGenero());
            comando.setInt(10, filme.getTipoDeMidia().getCodTipoDeMidia());
            comando.setInt(11, filme.getFornecedor().getCodFornecedor());
            comando.setInt(12, filme.getCodFilme());
            comando.execute();
            comando.close();
            conexao.close();
        }   catch (SQLException e) {
        throw e;
    }
    }
}

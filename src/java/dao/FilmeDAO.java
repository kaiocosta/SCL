
package dao;

import static dao.BD.fecharConexao;
import java.sql.Connection;
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
        List<Filme> filmes = new ArrayList<Filme>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from filme");
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
           filme.setCodGenero(rs.getInt("codGenero"));
           filme.setCodCategoria(rs.getInt("codCategoria"));
           filme.setCodTipoDeMidia(rs.getInt("codTipoDeMidia"));
           filme.setCodFornecedor(rs.getInt("codFornecedor"));
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
    
}

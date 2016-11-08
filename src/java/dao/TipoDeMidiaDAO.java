
package dao;

import static dao.BD.fecharConexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.TipoDeMidia;


public class TipoDeMidiaDAO {
    
    public static List<TipoDeMidia> obterTipoDeMidias() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<TipoDeMidia> tiposdemidias = new ArrayList<TipoDeMidia>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from tipodemidia");
            while (rs.next()){
                TipoDeMidia tipodemidia = new TipoDeMidia
                                   (rs.getInt("codTipoDeMidia"),
                                    rs.getString("nome"),
                                    rs.getString("descricao"));
                tiposdemidias.add(tipodemidia);
            }
            
        }
        catch(SQLException e){
                    e.printStackTrace();
            } finally {
                    fecharConexao(conexao, comando);
    
        }
        return tiposdemidias;
    }
    
    public static TipoDeMidia obterTipoDeMidia(int codTipoDeMidia) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        TipoDeMidia tipoDeMidia = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from tipodemidia where codTipoDeMidia = " + codTipoDeMidia);
            rs.first();
            
            tipoDeMidia = new TipoDeMidia
                          (rs.getInt("codTipoDeMidia"),
                           rs.getString("nome"),
                           rs.getString("descricao"));
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            fecharConexao(conexao, comando);
        }
        return tipoDeMidia;
    }
    
    public static void gravar(TipoDeMidia tipoDeMidia) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into tipodemidia (codTipoDeMidia, nome, descricao) values (?,?,?)";
            PreparedStatement comando = conexao.prepareStatement(sql);
            comando.setInt(1, tipoDeMidia.getCodTipoDeMidia());
            comando.setString(2, tipoDeMidia.getNome());
            comando.setString(3, tipoDeMidia.getDescricao());
            comando.execute();
            comando.close();
            conexao.close();
        } catch (SQLException e) {
            throw e;
        }
    }
    
    public static void alterar(TipoDeMidia tipoDeMidia) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = BD.getConexao();
            String sql = "update tipodemidia set nome = ?, descricao = ? where codTipoDeMidia = ?";
            PreparedStatement comando = conexao.prepareStatement(sql);
            comando.setString(1, tipoDeMidia.getNome());
            comando.setString(2, tipoDeMidia.getDescricao());
            comando.setInt(3, tipoDeMidia.getCodTipoDeMidia());
            comando.execute();
            comando.close();
            conexao.close();
        } catch (SQLException e) {
            throw e;
        }
    }
    
    public static void excluir(TipoDeMidia tipoDeMidia) throws ClassNotFoundException, SQLException{
	Connection conexao = null;
        try{
            conexao = BD.getConexao();
            String sql = "delete from tipodemidia where codTipoDeMidia = ?";
            PreparedStatement comando = conexao.prepareStatement(sql);
            comando.setInt(1, tipoDeMidia.getCodTipoDeMidia());
            comando.execute();
            comando.close();
            conexao.close();
        } catch (SQLException e) {
            throw e;
        }
    }
}

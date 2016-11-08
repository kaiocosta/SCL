
package dao;

import static dao.BD.fecharConexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Genero;


public class GeneroDAO {
    
    public static List<Genero> obterGeneros() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Genero> generos = new ArrayList<Genero>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from generos");
            while (rs.next()){
                Genero genero = new Genero
                                   (rs.getInt("codGenero"),
                                    rs.getString("nome"),
                                    rs.getString("descricao"));
                generos.add(genero);
            }
            
        }
        catch(SQLException e){
                    e.printStackTrace();
            } finally {
                    fecharConexao(conexao, comando);
    
        }
        return generos;
    }
    
    public static Genero obterGenero(int codGenero) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        Genero genero = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from generos where codGenero = " + codGenero);
            rs.first();
            
            genero = new Genero
                          (rs.getInt("codGenero"),
                           rs.getString("nome"),
                           rs.getString("descricao"));
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            fecharConexao(conexao, comando);
        }
        return genero;
    }
    
    public static void gravar(Genero genero) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into generos (codGenero, nome, descricao) values (?,?,?)";
            PreparedStatement comando = conexao.prepareStatement(sql);
            comando.setInt(1, genero.getCodGenero());
            comando.setString(2, genero.getNome());
            comando.setString(3, genero.getDescricao());
            comando.execute();
            comando.close();
            conexao.close();
        } catch (SQLException e) {
            throw e;
        }
    }
    
     public static void alterar(Genero genero) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = BD.getConexao();
            String sql = "update generos set nome = ?, descricao = ? where codGenero = ?";
            PreparedStatement comando = conexao.prepareStatement(sql);
            comando.setString(1, genero.getNome());
            comando.setString(2, genero.getDescricao());
            comando.setInt(3, genero.getCodGenero());
            comando.execute();
            comando.close();
            conexao.close();
        } catch (SQLException e) {
            throw e;
        }
    }
    public void excluir(Genero genero) throws ClassNotFoundException{
	try{
            Connection db = BD.getConexao ();
            PreparedStatement st = db.prepareStatement ("delete from generos where codGenero = ?");
            st.setInt(1, genero.getCodGenero());
            st.executeUpdate();
            st.close();
        } catch(SQLException ex){
	}
    }
}



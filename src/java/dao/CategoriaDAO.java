/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.BD.fecharConexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Categoria;


public class CategoriaDAO {
    
    public static List<Categoria> obterCategorias() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Categoria> categorias = new ArrayList();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from categorias");
            while (rs.next()){
                Categoria categoria = new Categoria
                                   (rs.getInt("codCategoria"),
                                    rs.getString("nome"),
                                    rs.getString("descricao"),
                                    rs.getString("periodoTrocaCategoria"),
                                    rs.getString("proximaCategoria")
                                    );
                categorias.add(categoria);
            }
            
        }
        catch(SQLException e){
                    e.printStackTrace();
            } finally {
                    fecharConexao(conexao, comando);
    
        }
        return categorias;
    }
    
    public static Categoria obterCategoria(int codCategoria) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        Categoria categoria = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from categorias where codCategoria = " + codCategoria);
            rs.first();
            
            categoria = new Categoria(rs.getInt("codCategoria"),
                                    rs.getString("nome"),
                                    rs.getString("descricao"),
                                    rs.getString("periodoTrocaCategoria"),
                                    rs.getString("proximaCategoria"));
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            fecharConexao(conexao, comando);
        }
        return categoria;
    }    
            
    public static void gravar(Categoria categoria) throws SQLException, ClassNotFoundException {
       Connection conexao = null;
       try{
           conexao = BD.getConexao();
           String sql = "insert into categorias (codCategoria, nome, descricao, periodoTrocaCategoria, proximaCategoria) values (?, ?, ?, ?, ?)";
           PreparedStatement comando = conexao.prepareStatement(sql);
           comando.setInt(1, categoria.getCodCategoria());
           comando.setString(2, categoria.getNome());
           comando.setString(3, categoria.getDescricao());
           comando.setString(4, categoria.getPeriodoTrocaCategoria());
           comando.setString(5, categoria.getProximaCategoria());
           comando.execute();
           comando.close();
           conexao.close();
    } catch (SQLException e) {
        throw e;
    }
    
    }
    
    public static void alterar(Categoria categoria) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        try{
           conexao = BD.getConexao();
           String sql = "update categorias set nome = ?, descricao = ?, periodoTrocaCategoria = ?, proximaCategoria = ? where codCategoria = ?";
           PreparedStatement comando = conexao.prepareStatement(sql);
           comando.setString(1, categoria.getNome());
           comando.setString(2, categoria.getDescricao());
           comando.setString(3, categoria.getPeriodoTrocaCategoria());
           comando.setString(4, categoria.getProximaCategoria());
           comando.setInt(5, categoria.getCodCategoria());
           comando.execute();
           comando.close();
           conexao.close();
    }   catch (SQLException e) {
        throw e;
    }
    }
    public void excluir(Categoria categoria){
	try{
            Connection db = Conexao.getConnection ();
            PreparedStatement st = db.prepareStatement ("delete from categorias where codCategoria = ?");
            st.setInt(1, categoria.getCodCategoria());
            st.executeUpdate();
            st.close();
        } catch(SQLException ex){
	}
    }
    
}



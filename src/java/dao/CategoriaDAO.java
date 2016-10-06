/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.BD.fecharConexao;
import java.sql.Connection;
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
        List<Categoria> categorias = new ArrayList<Categoria>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from categoria");
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
    
}



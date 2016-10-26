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
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import modelo.Usuario;


public class UsuarioDAO {
    
    public static List<Usuario> obterUsuarios() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Usuario> usuarios = new ArrayList();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from usuarios");
            while (rs.next()){
                Usuario usuario = new Usuario
                                   (rs.getInt("codUsuario"),
                                    rs.getString("nome"),
                                    rs.getString("sexo"),
                                    rs.getString("dataDeNasc"),
                                    rs.getString("estadoCivil"),       
                                    rs.getString("cpf"),       
                                    rs.getString("rg"),
                                    rs.getString("login"),
                                    rs.getString("senha"),
                                    rs.getString("cep"),
                                    rs.getString("bairro"),
                                    rs.getString("logradouro"),
                                    rs.getString("numero"),
                                    rs.getString("complemento"),
                                    rs.getString("estado"),
                                    rs.getString("cidade"),      
                                    rs.getString("telefone1"),
                                    rs.getString("telefone2"),
                                    rs.getString("celular"),
                                    rs.getString("email")); 
                usuarios.add(usuario);
            }
            
        }
        catch(SQLException e){
                    e.printStackTrace();
            } finally {
                    fecharConexao(conexao, comando);
    
        }
        return usuarios;
    }
    
    public static Usuario obterUsuario(int codUsuario) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        Usuario usuario = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from usuarios where codUsuario = " + codUsuario);
            rs.first();
            
            usuario = new Usuario
                              (rs.getInt("codUsuario"),
                               rs.getString("nome"),
                               rs.getString("sexo"),
                               rs.getString("dataDeNasc"),
                               rs.getString("estadoCivil"),       
                               rs.getString("cpf"),       
                               rs.getString("rg"),
                               rs.getString("login"),
                               rs.getString("senha"),       
                               rs.getString("cep"),
                               rs.getString("bairro"),
                               rs.getString("logradouro"),
                               rs.getString("numero"),
                               rs.getString("complemento"),
                               rs.getString("estado"),
                               rs.getString("cidade"),
                               rs.getString("telefone1"),
                               rs.getString("telefone2"),
                               rs.getString("celular"),
                               rs.getString("email"));      
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            fecharConexao(conexao, comando);
         }
        return usuario;
    }    
    
    public static void gravar(Usuario usuario) throws SQLException, ClassNotFoundException {
       Connection conexao = null;
       try{
           conexao = BD.getConexao();
           String sql = "insert into usuarios (codUsuario, nome, sexo, dataDeNasc, estadoCivil, cpf, rg, login, senha, "
                   + "cep, bairro, logradouro, numero, complemento, estado, cidade, "
                   + "telefone1, telefone2, celular, email) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
           PreparedStatement comando = conexao.prepareStatement(sql);
           comando.setInt(1, usuario.getCodUsuario());
           comando.setString(2, usuario.getNome());
           comando.setString(3, usuario.getSexo());
           comando.setString(4, usuario.getDataDeNasc());
           comando.setString(5, usuario.getEstadoCivil());
           comando.setString(6, usuario.getCpf());
           comando.setString(7, usuario.getRg());
           comando.setString(8, usuario.getLogin());
           comando.setString(9, usuario.getSenha());
           comando.setString(10, usuario.getCep());
           comando.setString(11, usuario.getBairro());
           comando.setString(12, usuario.getLogradouro());
           comando.setString(13, usuario.getNumero());
           comando.setString(14, usuario.getComplemento());
           comando.setString(15, usuario.getEstado());
           comando.setString(16, usuario.getCidade());
           comando.setString(17, usuario.getTelefone1());
           comando.setString(18, usuario.getTelefone2());
           comando.setString(19, usuario.getCelular());
           comando.setString(20, usuario.getEmail());
          
           comando.execute();
           comando.close();
           conexao.close();
    } catch (SQLException e) {
        throw e;
    }
    }
    
    
}


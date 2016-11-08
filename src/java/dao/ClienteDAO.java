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
import modelo.Cliente;


public class ClienteDAO {
    
    public static List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Cliente> clientes = new ArrayList();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from clientes");
            while (rs.next()){
                Cliente cliente = new Cliente
                                   (rs.getInt("codCliente"),
                                    rs.getString("nome"),
                                    rs.getString("sexo"),
                                    rs.getString("dataDeNasc"),
                                    rs.getString("estadoCivil"),       
                                    rs.getString("cpf"),       
                                    rs.getString("rg"),
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
                clientes.add(cliente);
            }
            
        }
        catch(SQLException e){
                    e.printStackTrace();
            } finally {
                    fecharConexao(conexao, comando);
    
        }
        return clientes;
    }
    
    public static Cliente obterCliente(int codCliente) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        Cliente cliente = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from clientes where codCliente = " + codCliente);
            rs.first();
            
            cliente = new Cliente(rs.getInt("codCliente"),
                                    rs.getString("nome"),
                                    rs.getString("sexo"),
                                    rs.getString("dataDeNasc"),
                                    rs.getString("estadoCivil"),       
                                    rs.getString("cpf"),       
                                    rs.getString("rg"),
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
        return cliente;
    }    
    
    public static void gravar(Cliente cliente) throws SQLException, ClassNotFoundException {
       Connection conexao = null;
       try{
           conexao = BD.getConexao();
           String sql = "insert into clientes (codCliente, nome, sexo, dataDeNasc, estadoCivil, cpf, rg, "
                   + "cep, bairro, logradouro, numero, complemento, estado, cidade, "
                   + "telefone1, telefone2, celular, email) "
                   + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
           
           PreparedStatement comando = conexao.prepareStatement(sql);
           comando.setInt(1, cliente.getCodCliente());
           comando.setString(2, cliente.getNome());
           comando.setString(3, cliente.getSexo());
           comando.setString(4, cliente.getDataDeNasc());
           comando.setString(5, cliente.getEstadoCivil());
           comando.setString(6, cliente.getCpf());
           comando.setString(7, cliente.getRg());
           comando.setString(8, cliente.getCep());
           comando.setString(9, cliente.getBairro());
           comando.setString(10, cliente.getLogradouro());
           comando.setString(11, cliente.getNumero());
           comando.setString(12, cliente.getComplemento());
           comando.setString(13, cliente.getEstado());
           comando.setString(14, cliente.getCidade());
           comando.setString(15, cliente.getTelefone1());
           comando.setString(16, cliente.getTelefone2());
           comando.setString(17, cliente.getCelular());
           comando.setString(18, cliente.getEmail());
          
           comando.execute();
           comando.close();
           conexao.close();
    } catch (SQLException e) {
        throw e;
    }
    }
    
    public static void alterar(Cliente cliente) throws SQLException, ClassNotFoundException {
    Connection conexao = null;
       try{
           conexao = BD.getConexao();
           String sql = "update clientes set nome = ?, sexo = ?, dataDeNasc = ?, estadoCivil = ?, cpf = ?, rg = ?, "
                   + "cep = ?, bairro = ?, logradouro = ?, numero = ?, complemento = ?, estado = ?, cidade = ?, "
                   + "telefone1 = ?, telefone2 = ?, celular = ?, email = ? where codCliente = ? ";
           
           PreparedStatement comando = conexao.prepareStatement(sql);
           comando.setString(1, cliente.getNome());
           comando.setString(2, cliente.getSexo());
           comando.setString(3, cliente.getDataDeNasc());
           comando.setString(4, cliente.getEstadoCivil());
           comando.setString(5, cliente.getCpf());
           comando.setString(6, cliente.getRg());
           comando.setString(7, cliente.getCep());
           comando.setString(8, cliente.getBairro());
           comando.setString(9, cliente.getLogradouro());
           comando.setString(10, cliente.getNumero());
           comando.setString(11, cliente.getComplemento());
           comando.setString(12, cliente.getEstado());
           comando.setString(13, cliente.getCidade());
           comando.setString(14, cliente.getTelefone1());
           comando.setString(15, cliente.getTelefone2());
           comando.setString(16, cliente.getCelular());
           comando.setString(17, cliente.getEmail());
           comando.setInt(18, cliente.getCodCliente());
           
           comando.execute();
           comando.close();
           conexao.close();
    } catch (SQLException e) {
        throw e;
    }
    }
    
    public static void excluir(Cliente cliente) throws ClassNotFoundException, SQLException{
	Connection conexao = null;
        try{
            conexao = BD.getConexao();
            String sql = "delete from clientes where codCliente = ?";
            PreparedStatement comando = conexao.prepareStatement(sql);
            comando.setInt(1, cliente.getCodCliente());
            comando.execute();
            comando.close();
            conexao.close();
        } catch (SQLException e) {
            throw e;
        }
    }
}

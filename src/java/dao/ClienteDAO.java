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
import modelo.Cliente;


public class ClienteDAO {
    
    public static List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Cliente> clientes = new ArrayList<Cliente>();
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
                                    null,
                                    null,
                                    null);
                cliente.setCodEndereco(rs.getInt("codEndereco"));
                cliente.setCodContato(rs.getInt("codContato"));
                cliente.setCodDependente(rs.getInt("coddependente"));
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
    
}

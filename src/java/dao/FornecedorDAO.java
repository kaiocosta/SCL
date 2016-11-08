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
import modelo.Fornecedor;


public class FornecedorDAO {
    
    public static List<Fornecedor> obterFornecedores() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Fornecedor> fornecedores = new ArrayList<Fornecedor>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from fornecedores");
            while (rs.next()){
                Fornecedor fornecedor = new Fornecedor
                                   (rs.getInt("codFornecedor"),
                                    rs.getString("razaoSocial"),
                                    rs.getString("nomeFantasia"),
                                    rs.getString("cnpj"),
                                    rs.getString("nomeContato"),       
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
                fornecedores.add(fornecedor);
            }
            
        }
        catch(SQLException e){
                    e.printStackTrace();
            } finally {
                    fecharConexao(conexao, comando);
    
        }
        return fornecedores;
    }
    
    public static Fornecedor obterFornecedor(int codFornecedor) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        Fornecedor fornecedor = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from fornecedores where codFornecedor = " + codFornecedor);
            rs.first();
            
            fornecedor = new Fornecedor
                              (rs.getInt("codFornecedor"),
                                    rs.getString("razaoSocial"),
                                    rs.getString("nomeFantasia"),
                                    rs.getString("cnpj"),
                                    rs.getString("nomeContato"),       
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
        return fornecedor;
    }
    
    public static void gravar(Fornecedor fornecedor) throws SQLException, ClassNotFoundException {
       Connection conexao = null;
       try{
           conexao = BD.getConexao();
           String sql = "insert into fornecedores (codFornecedor, razaoSocial, nomeFantasia, cnpj, nomeCOntato, "
                   + "cep, bairro, logradouro, numero, complemento, estado, cidade, "
                   + "telefone1, telefone2, celular, email)values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
           PreparedStatement comando = conexao.prepareStatement(sql);
           comando.setInt(1, fornecedor.getCodFornecedor());
           comando.setString(2, fornecedor.getRazaoSocial());
           comando.setString(3, fornecedor.getNomeFantasia());
           comando.setString(4, fornecedor.getCnpj());
           comando.setString(5, fornecedor.getNomeContato());
           comando.setString(6, fornecedor.getCep());
           comando.setString(7, fornecedor.getBairro());
           comando.setString(8, fornecedor.getLogradouro());
           comando.setString(9, fornecedor.getNumero());
           comando.setString(10, fornecedor.getComplemento());
           comando.setString(11, fornecedor.getEstado());
           comando.setString(12, fornecedor.getCidade());
           comando.setString(13, fornecedor.getTelefone1());
           comando.setString(14, fornecedor.getTelefone2());
           comando.setString(15, fornecedor.getCelular());
           comando.setString(16, fornecedor.getEmail());
          
           comando.execute();
           comando.close();
           conexao.close();
    } catch (SQLException e) {
        throw e;
    }
    }
    
    public static void alterar(Fornecedor fornecedor) throws SQLException, ClassNotFoundException {
       Connection conexao = null;
       try{
           conexao = BD.getConexao();
           String sql = " update fornecedores set razaoSocial = ?, nomeFantasia = ?, cnpj = ?, nomeCOntato = ?, "
                   + "cep = ?, bairro = ?, logradouro = ?, numero = ?, complemento = ?, estado = ?, cidade = ?, "
                   + "telefone1 = ?, telefone2 = ?, celular = ?, email = ? where codFornecedor = ? ";
           PreparedStatement comando = conexao.prepareStatement(sql);
           comando.setString(1, fornecedor.getRazaoSocial());
           comando.setString(2, fornecedor.getNomeFantasia());
           comando.setString(3, fornecedor.getCnpj());
           comando.setString(4, fornecedor.getNomeContato());
           comando.setString(5, fornecedor.getCep());
           comando.setString(6, fornecedor.getBairro());
           comando.setString(7, fornecedor.getLogradouro());
           comando.setString(8, fornecedor.getNumero());
           comando.setString(9, fornecedor.getComplemento());
           comando.setString(10, fornecedor.getEstado());
           comando.setString(11, fornecedor.getCidade());
           comando.setString(12, fornecedor.getTelefone1());
           comando.setString(13, fornecedor.getTelefone2());
           comando.setString(14, fornecedor.getCelular());
           comando.setString(15, fornecedor.getEmail());
           comando.setInt(16, fornecedor.getCodFornecedor());
           comando.execute();
           comando.close();
           conexao.close();
    } catch (SQLException e) {
        throw e;
    }
    }
    
    public void excluir(Fornecedor fornecedor){
	try{
	Connection db = Conexao.getConnection ();
	PreparedStatement st = db.prepareStatement ("delete from fornecedores where codFornecedor = ?");
	st.setInt(1, fornecedor.getCodFornecedor());
	st.executeUpdate();
	st.close();
	} catch(SQLException ex){
	}
}
}
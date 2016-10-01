package dao;

import static dao.BD.fecharConexao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Locadora;


public class LocadoraDAO {
    
    public static List<Locadora> obterLocadora() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Locadora> locadoras = new ArrayList<Locadora>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from locadora");
            while (rs.next()){
                Locadora locadora = new Locadora
                                   (rs.getInt("id_locadora"),
                                    rs.getString("dataLocacao"),
                                    null,
                                    null,
                                    null);
           locadora.setCodUsuario(rs.getInt("codUsuario"));
           locadora.setCodCliente(rs.getInt("codCliente"));
           locadora.setCodFilme(rs.getInt("codFilme"));
           locadoras.add(locadora);
            }
            
        }
        catch(SQLException e){
                    e.printStackTrace();
            } finally {
                    fecharConexao(conexao, comando);
    
        }
        return locadoras;
    }
    
}

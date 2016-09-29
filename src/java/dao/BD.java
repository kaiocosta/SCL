
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class BD {
    
    public static Connection getConexao() 
        
        throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Class.forName("com.mysql.jdbc.Driver");
        conexao = DriverManager.getConnection("jdbc:mysql:http://localhost/phpmyadmin/db_structure.php?server=1&db=sclbd&token=6e6d16333eeb8e7bbd3b29174da505aa", "root", "");
        return conexao;
    }
    
    public static void fecharConexao (Connection conexao, Statement comando){
        try{
            if(comando != null){
                comando.close();
            }
            if(conexao != null){
                conexao.close();
            }
        }catch (SQLException e){
    }
    }
}

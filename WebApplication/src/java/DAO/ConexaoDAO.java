package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDAO {
    
    private Connection conn;
    
    public Connection ConexaoBD() throws ClassNotFoundException {
		
	this.conn = null;
        String url = "jdbc:mysql://localhost/biblioteca";
        String user = "root";
        String password = "admin@123";
		
	try {
            
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Conexão com banco de dados estabelecida");
		
	} catch (ClassNotFoundException e) {
            
            e.printStackTrace();
            
        } catch (SQLException e) {
            
            e.printStackTrace();
            
        }
        
        return conn;
        		
    }	
    
    
}

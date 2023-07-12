package DAO;

import DTO.LivroDTO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LivroDAO {
    
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    	
    
    public void cadastrarLivro(LivroDTO livro) throws ClassNotFoundException {
        
        String sql = "INSERT INTO livro(nome_livro) VALUES (?)";
        conn = new ConexaoDAO().ConexaoBD();
        
        try {
            
            ps = conn.prepareStatement(sql);
            ps.setString(1, livro.getNomeLivro());     
            
            ps.executeUpdate();
            ps.close();

            
        } catch (SQLException e) {
            
            e.printStackTrace();
            
        }
        
    }
    
    
    public void excluirLivro(LivroDTO livro) throws ClassNotFoundException{
        
        String sql = "DELETE FROM livro WHERE id_livro = ?";
        conn = new ConexaoDAO().ConexaoBD();
        
        try{
            
            ps = conn.prepareStatement(sql);
            ps.setInt(1, livro.getIdLivro());
            
            ps.execute();
            ps.close();
            
        }catch(SQLException e){
            
            e.printStackTrace();
            
        }
        
    }
    
    public void alterarLivro(LivroDTO livro) throws ClassNotFoundException{
        
        String sql = "UPDATE livro SET nome_livro = ? WHERE id_livro = ?";
        conn = new ConexaoDAO().ConexaoBD();
            
        try{
            
            ps = conn.prepareStatement(sql);
            ps.setString(1, livro.getNomeLivro());
            ps.setInt(2, livro.getIdLivro());
            
            ps.execute();
            ps.close();
            
        }catch(SQLException e){
            
            e.printStackTrace();
            
        }
        
    }
    
    
    public ArrayList<LivroDTO> pesquisarLivro() throws ClassNotFoundException{
        
        String sql = "SELECT * FROM livro";
        conn = new ConexaoDAO().ConexaoBD();
        
        ArrayList<LivroDTO> listaLivro = new ArrayList<>();
        
        try {
            
          ps = conn.prepareStatement(sql);
          rs = ps.executeQuery(sql);
          
          while(rs.next()){
              
            LivroDTO livro = new LivroDTO();
            livro.setIdLivro(rs.getInt("id_livro"));
            livro.setNomeLivro(rs.getString("nome_livro"));
            listaLivro.add(livro);
            
          }
          
          return listaLivro;
            
        } catch (Exception e) {
            
            e.printStackTrace();
            return listaLivro;
            
        }
            
    }
    
}

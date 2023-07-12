<%-- 
    Document   : inserirLivro
    Created on : 24/06/2023, 12:19:07
    Author     : João Vinicius
--%>

<%@page import="DAO.LivroDAO"%>
<%@page import="DTO.LivroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
       
        
        <%
            try{ 
                
                LivroDTO livroDTO = new LivroDTO();
                livroDTO.setNomeLivro(request.getParameter("nomeLivro"));

                LivroDAO livroDAO = new LivroDAO();
                livroDAO.cadastrarLivro(livroDTO);
                
            }catch(Exception e){
                
                e.printStackTrace();
            
            }
        %>
        
    
</html>

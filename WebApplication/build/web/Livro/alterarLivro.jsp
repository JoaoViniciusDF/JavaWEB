<%-- 
    Document   : alterarLivro
    Created on : 27/06/2023, 01:08:32
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
    <body>
        
        <%
        
            try{   
                
                LivroDTO livroDTO = new LivroDTO();
                livroDTO.setIdLivro(Integer.parseInt(request.getParameter("idLivro")));                
                livroDTO.setNomeLivro(request.getParameter("nomeLivro"));                

                LivroDAO livroDAO = new LivroDAO();
                livroDAO.alterarLivro(livroDTO);
                
            }catch(Exception e){
                
                e.printStackTrace();
                
            }
        
        %>
        
    </body>
</html>

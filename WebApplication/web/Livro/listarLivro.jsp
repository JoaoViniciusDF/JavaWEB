<%-- 
    Document   : listarLivro
    Created on : 24/06/2023, 20:22:05
    Author     : João Vinicius
--%>

<%@page import="java.util.ArrayList"%>
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
            
            LivroDAO livroDAO = new LivroDAO();
            ArrayList<LivroDTO> lista = livroDAO.pesquisarLivro();
            
            for(int i = 0; i < lista.size(); i++){
                
                out.println("Código: " + lista.get(i).getIdLivro() + "<br>");
                out.println("Nome: " + lista.get(i).getNomeLivro() + "<br>");
                
                out.println("<a href ='frmExcluirLivroVIEW.jsp?id=" + lista.get(i).getIdLivro() + "&nome=" + lista.get(i).getNomeLivro() + "'> Excluir </a>");
                out.println("<a href ='frmAlterarVIEW.jsp?id=" + lista.get(i).getIdLivro() + "&nome=" + lista.get(i).getNomeLivro() + "'> Alterar </a>");
                
                %> <br><br> <%
                
            }
        
            
        %>
        
    </body>
</html>

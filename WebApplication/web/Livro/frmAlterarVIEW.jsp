<%-- 
    Document   : frmAlterarVIEW
    Created on : 27/06/2023, 01:07:51
    Author     : João Vinicius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="alterarLivro.jsp" method="post">
            
            <label>Código do livro: </label><br>
            <input type="text" name="idLivro" 
                   value="<%=request.getParameter("id")%>"><br>
            
            
            <label>Código do livro: </label><br>
            <input type="text" name="nomeLivro"
                   value="<%=request.getParameter("nome")%>"><br>
            
            <button type="submit">ALTERAR</button>
            
        </form>
        
    </body>
</html>

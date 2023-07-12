<%-- 
    Document   : frmExcluirLivroVIEW
    Created on : 25/06/2023, 13:59:37
    Author     : João Vinicius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/estilo.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="excluirLivro.jsp" method="post">
            
            <label>Código do livro: </label><br>
            <input type="text" name="idLivro" 
                   value="<%=request.getParameter("id")%>"><br>
            
            
            <label>Código do livro: </label><br>
            <input type="text" name="nomeLivro"
                   value="<%=request.getParameter("nome")%>"><br>
            
            <button type="submit">EXCLUIR</button>
            
        </form>
        
    </body>
</html>

<%-- 
    Document   : frmLivroVIEW
    Created on : 24/06/2023, 12:20:07
    Author     : João Vinicius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/estilo.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="inserirLivro.jsp" method="post">
            
            <label>Nome do livro: </label>
            <input type="text" name="nomeLivro">
            
            <button type="submit">CADASTRAR</button>
            
        </form>
         
    </body>
</html>

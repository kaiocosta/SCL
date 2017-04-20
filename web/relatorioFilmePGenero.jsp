<%-- 
    Document   : relatorioFilmePGenero
    Created on : 20/04/2017, 08:10:15
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <h1>Relatório</h1>
    <form action="RelatorioControllerFilmePGenero" method="post">
      Entre com o nome do Genero
      <input type="text" name="txtNomeGenero"/><br/>
      <input type="submit"/>
    </form>
    </body>
</html>

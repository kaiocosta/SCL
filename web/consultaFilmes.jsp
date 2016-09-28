<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <title>Pesquisa Filmes</title>
  </head>
 
  <body>
    <h1>Pesquisa Filme</h1>
    <table border = 1>
      <tr>
        <td>Cod.</td>
      </tr>
      <tr>
        <td>Nome</td>
      </tr>
      <tr>
        <td>Ação</td>
      </tr>
    </table>  
      <c:forEach items="${filmes}" var="filmes">
        <tr>
          <td><c:out value="filmes.id_filmes"></c:out></td>
          <td><c:out value="filmes.titulo"></c:out></td>
          <td><a href="ManterFilmesController?acao=prepararEditar&id_Filme=<c:out value="${filmes.id_filmes}>"></c:out>"Editar</a></td>
          <td><a href="ManterFilmesController?acao=prepararExcluir&id_Filme=<c:out value="${filmes.id_filmes}>"></c:out>"Excluir</a></td>
        </tr>
      </c:forEach>
        
      <form action="ManterFilmesController?acao=prepararIncluir" method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
      </form>
  </body>
</html>
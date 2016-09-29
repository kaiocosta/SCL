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
        <th>Cod.</th>
        <th>Nome</th>
        <th colspan="2">Ação</th>
      <c:forEach items="${filmes}" var="filme">
        <tr>
<<<<<<< HEAD
          <td><c:out value="${filme.id_filme}"></c:out></td>
          <td><c:out value="${filme.titulo}"></c:out></td>
          <td><a href="ConsultaFilmesController?acao=prepararEditar&id_Filme=<c:out value="${filme.id_filme}"></c:out>">Editar</a></td>
          <td><a href="ConsultaFilmesController?acao=prepararExcluir&id_Filme=<c:out value="${filme.id_filme}"></c:out>">Excluir</a></td>
=======
          <td><c:out value="filmes.id_filme"></c:out></td>
          <td><c:out value="filmes.titulo"></c:out></td>
          <td><a href="ManterFilmesController?acao=prepararEditar&id_Filme=<c:out value="${filmes.id_filme}>"></c:out>"Editar</a></td>
          <td><a href="ManterFilmesController?acao=prepararExcluir&id_Filme=<c:out value="${filmes.id_filme}>"></c:out>"Excluir</a></td>
>>>>>>> origin/master
        </tr>
      </c:forEach>
       </table>  
     
      <form action="ConsultaFilmesController?acao=prepararIncluir" method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
      </form>
  </body>
</html>

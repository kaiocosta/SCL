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
      <c:forEach items="${filme}" var="filme">
        <tr>
          <td><c:out value="${filme.codFilme}"></c:out></td>
          <td><c:out value="${filme.titulo}"></c:out></td>
          <td><a href="ManterFilmeController?acao=prepararEditar&id_Filme=<c:out value="${filme.codFilme}"></c:out>">Editar</a></td>
          <td><a href="ManterFilmeController?acao=prepararExcluir&titulo=<c:out value="${filme.titulo}"></c:out>">Excluir</a></td>
        </tr>
      </c:forEach>
       </table></br>  
     
      <form action="ManterFilmeController?acao=prepararIncluir" method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
      </form>
  </body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <h1>Pesquisa genero</h1>
    <table border = 1>
      <th>Cod.</th>
      <th>Nome</th>
      <th colspan="2">Ação</th>
      <c:forEach items="${generos}" var="genero">
        <tr>
          <td><c:out value="${genero.codGenero}"></c:out></td>
          <td><c:out value="${genero.nome}"></c:out></td>
          <td><a href="ManterGeneroController?acao=prepararEditar&codGenero=<c:out value="${genero.codGenero}"> </c:out>">Editar</a></td>
          <td><a href="ManterGeneroController?acao=prepararExcluir&codGenero=<c:out value="${genero.codGenero}"> </c:out>">Excluir</a></td>
        </tr>
      </c:forEach>
    </table></br>
    
    <form class="" action="ManterGeneroController?acao=prepararIncluir" method="post">
      <input type="submit" name="btnIncluir" value="Incluir">
    </form>
  </body>
</html>

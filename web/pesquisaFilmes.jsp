<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib url="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib url="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <h1>Pesquisa Filme</h1>
    <table>
      <tr>
        <td>Cod.</td>
      </tr>
      <tr>
        <td>Nome</td>
      </tr>
      <tr>
        <td>Ação</td>
      </tr>

      <c:forEach items="${filme}" var="filme">
        <tr>
          <td><c:out value="filme.codfilme"></td>
          <td><c:out value="filme.nome"></td>
          <td><a href="ManterFilmeController?acao=prepararEditar&codFilme=<c:out value="${cliente.codFilme}"/>">Editar</a></td>
          <td><a href="ManterFilmeController?acao=prepararExcluir&codFilme=<c:out value="${cliente.codFilme}"/>">Excluir</a></td>
        </tr>
      </c:forEach>


    </table>
    <form class="" action="ManterFilmeController?acao=prepararIncluir" method="post">
      <input type="submit" name="btnIncluir" value="Incluir">
    </form>
  </body>
</html>
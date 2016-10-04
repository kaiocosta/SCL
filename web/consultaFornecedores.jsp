<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <h1>Pesquisa fornecedores</h1>
    <table>
      <th>
        <td>Cod.</td>
      </th>
      <th>
        <td>Nome</td>
      </th>
      <th>
        <td>Ação</td>
      </th>

      <c:forEach items="${fornecedores}" var="fornecedores">
        <tr>
          <td><c:out value="${fornecedores.id_fornecedores}"></c:out></td>
          <td><c:out value="${fornecedores.nome}"></c:out></td>
          <td><a href="ManterFornecedoresController?acao=prepararEditar&codFornecedores=<c:out value="${fornecedores.codFornecedor}"></c:out>">Editar</a></td>
          <td><a href="ManterFornecedoresController?acao=prepararExcluir&codFornecedores=<c:out value="${fornecedores.codFornecedor}"></c:out>">Excluir</a></td>
        </tr>
      </c:forEach>


    </table>
    <form class="" action="ManterFornecedoresController?acao=prepararIncluir" method="post">
      <input type="submit" name="btnIncluir" value="Incluir">
    </form>
  </body>
</html>

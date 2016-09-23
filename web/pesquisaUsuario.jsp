<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib url="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib url="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <h1>Pesquisa Usuario</h1>
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

      <c:forEach items="${usuario}" var="usuario">
        <tr>
          <td><c:out value="usuario.codusuario"></td>
          <td><c:out value="usuario.nome"></td>
          <td><a href="ManterUsuarioController?acao=prepararEditar&codUsuario=<c:out value="${cliente.codUsuario}"/>">Editar</a></td>
          <td><a href="ManterUsuarioController?acao=prepararExcluir&codUsuario=<c:out value="${cliente.codUsuario}"/>">Excluir</a></td>
        </tr>
      </c:forEach>


    </table>
    <form class="" action="ManterUsuarioController?acao=prepararIncluir" method="post">
      <input type="submit" name="btnIncluir" value="Incluir">
    </form>
  </body>
</html>

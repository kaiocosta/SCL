<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <title>Pesquisa Categorias</title>
  </head>
 
  <body>
    <h1>Pesquisa Categorias</h1>
    <table border = 1>
        <th>Cod.</th>
        <th>Nome</th>
        <th colspan="2">Ação</th>
      <c:forEach items="${categoria}" var="categoria">
        <tr>
          <td><c:out value="${categoria.codCategoria}"></c:out></td>
          <td><c:out value="${categoria.nome}"></c:out></td>
          <td><a href="ManterCategoriaController?acao=prepararEditar&codCategoria=<c:out value="${categoria.codCategoria}"></c:out>">Editar</a></td>
          <td><a href="ManterCategoriaController?acao=prepararExcluir&nome=<c:out value="${categoria.nome}"></c:out>">Excluir</a></td>
        </tr>
      </c:forEach>
       </table></br>  
     
      <form action="ManterCategoriaController?acao=prepararIncluir" method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
      </form>
  </body>
</html>    
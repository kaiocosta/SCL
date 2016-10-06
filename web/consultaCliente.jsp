<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <title>Pesquisa Cliente</title>
  </head>
 
  <body>
    <h1>Pesquisa Cliente</h1>
    <table border = 1>
        <th>Cod.</th>
        <th>Nome</th>
        <th colspan="2">Ação</th>
      <c:forEach items="${cliente}" var="cliente">
        <tr>
          <td><c:out value="${cliente.codCliente}"></c:out></td>
          <td><c:out value="${cliente.nome}"></c:out></td>
          <td><a href="ConsultaClienteController?acao=prepararEditar&codCliente=<c:out value="${cliente.codCliente}"></c:out>">Editar</a></td>
          <td><a href="ConsultaClienteController?acao=prepararExcluir&nome=<c:out value="${cliente.nome}"></c:out>">Excluir</a></td>
        </tr>
      </c:forEach>
       </table></br>  
     
      <form action="ConsultaClienteController?acao=prepararIncluir" method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
      </form>
  </body>
</html>
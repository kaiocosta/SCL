<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <title>Pesquisa Usuarios</title>
  </head>
 
  <body>
    <h1>Pesquisa Usuarios</h1>
    <table border = 1>
        <th>Cod.</th>
        <th>Nome</th>
        <th colspan="2">Ação</th>
      <c:forEach items="${usuario}" var="usuario" >
        <tr>
          <td><c:out value="${usuario.codUsuario}"></c:out></td>
          <td><c:out value="${usuario.nome}"></c:out></td>
          <td><a href="ConsultaUsuarioController?acao=prepararEditar&codUsuario=<c:out value="${usuario.codUsuario}"></c:out>">Editar</a></td>
          <td><a href="ConsultaUsuarioController?acao=prepararExcluir&nome=<c:out value="${usuario.nome}"></c:out>">Excluir</a></td>
        </tr>
      </c:forEach>
       </table></br>  
     
      <form action="ConsultaUsuarioController?acao=prepararIncluir" method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
      </form>
  </body>
</html>
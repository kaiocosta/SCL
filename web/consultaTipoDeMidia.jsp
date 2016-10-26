<%-- 
    Document   : consultaTipoDeMidia
    Created on : 13/10/2016, 10:14:14
    Author     : Ramon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Tipo de Midia</title>
    </head>
    <body>
   <h1>Pesquisa Tipo de Midia</h1>
    <table border = 1>
        <th>Cod.</th>
        <th>Nome</th>
        <th>Descrição</th>
        
        <th colspan="2">Ação</th>
      <c:forEach items="${tipodemidia}" var="tipoDeMidia">
        <tr>
          <td><c:out value="${tipoDeMidia.codTipoDeMidia}"></c:out></td>
          <td><c:out value="${tipoDeMidia.nome}"></c:out></td>
          <td><c:out value="${tipoDeMidia.descricao}"></c:out></td>
          <td><a href="ManterTipoDeMidiaController?acao=prepararEditar&codTipoDeMidia=<c:out value="${tipoDeMidia.codTipoDeMidia}"></c:out>">Editar</a></td>
          <td><a href="ManterTipoDeMidiaController?acao=prepararExcluir&codTipoDeMidia=<c:out value="${tipoDeMidia.codTipoDeMidia}"></c:out>">Excluir</a></td>
        </tr>
      </c:forEach>
       </table></br>  
     
      <form action="ManterTipoDeMidiaController?acao=prepararIncluir" method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
      </form>

    </body>
</html>

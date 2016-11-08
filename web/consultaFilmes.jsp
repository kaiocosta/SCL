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
        <th>Título</th>
        <th>Título Original</th>
        <th>Nome do Diretor</th>
        <th>Ator Principal</th>
        <th>Premiações</th>
        <th>Ano de Produção</th>
        <th>Ano de Lançamento</th>
        
        <th colspan="2">Ação</th>
      <c:forEach items="${filmes}" var="filme">
        <tr>
          <td><c:out value="${filme.codFilme}"></c:out></td>
          <td><c:out value="${filme.titulo}"></c:out></td>
          <td><c:out value="${filme.tituloOriginal}"></c:out></td>
          <td><c:out value="${filme.nomeDiretor}"></c:out></td>
          <td><c:out value="${filme.nomeAtorPrincipal}"></c:out></td>
          <td><c:out value="${filme.nomePremiacoes}"></c:out></td>
          <td><c:out value="${filme.anoProducao}"></c:out></td>
          <td><c:out value="${filme.anoLancamento}"></c:out></td>
          <td><c:out value="${filme.getCategoria().getCodCategoria()}"></c:out></td>
          <td><c:out value="${filme.getGenero().getCodGenero()}"></c:out></td>
          <td><c:out value="${filme.getTipoDeMidia().getCodTipoDeMidia()}"></c:out></td>
          <td><c:out value="${filme.getFornecedor().getCodFornecedor()}"></c:out></td>
          
          
          <td><a href="ManterFilmeController?acao=prepararEditar&codFilme=<c:out value="${filme.codFilme}"></c:out>">Editar</a></td>
          <td><a href="ManterFilmeController?acao=prepararExcluir&codFilme=<c:out value="${filme.codFilme}"></c:out>">Excluir</a></td>
        </tr>
      </c:forEach>
       </table></br>  
     
      <form action="ManterFilmeController?acao=prepararIncluir" method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
      </form>
  </body>
</html>
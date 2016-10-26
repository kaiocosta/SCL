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
    <table border = 1>
        <th>Cod.</th>
        <th>Razão Social</th>
        <th>Nome Fantasia</th>
        <th>Cnpj</th>
        <th>Nome do Contato</th>
        <th>Cep</th>
        <th>Bairro</th>
        <th>Logradouro</th>
        <th>Número</th>
        <th>Complemento</th>
        <th>Estado</th>
        <th>Cidade</th>
        <th>Telefone 1</th>
        <th>Telefone 2</th>
        <th>Celular</th>
        <th>Email</th>
        
        
        <th colspan="2">Ação</th>
      <c:forEach items="${fornecedores}" var="fornecedor">
        <tr>
          <td><c:out value="${fornecedor.codFornecedor}"></c:out></td>
          <td><c:out value="${fornecedor.razaoSocial}"></c:out></td>
          <td><c:out value="${fornecedor.nomeFantasia}"></c:out></td>
          <td><c:out value="${fornecedor.cnpj}"></c:out></td>
          <td><c:out value="${fornecedor.nomeContato}"></c:out></td>
          <td><c:out value="${fornecedor.cep}"></c:out></td>
          <td><c:out value="${fornecedor.bairro}"></c:out></td>
          <td><c:out value="${fornecedor.logradouro}"></c:out></td>
          <td><c:out value="${fornecedor.numero}"></c:out></td>
          <td><c:out value="${fornecedor.complemento}"></c:out></td>
          <td><c:out value="${fornecedor.estado}"></c:out></td>
          <td><c:out value="${fornecedor.cidade}"></c:out></td>
          <td><c:out value="${fornecedor.telefone1}"></c:out></td>
          <td><c:out value="${fornecedor.telefone2}"></c:out></td>
          <td><c:out value="${fornecedor.celular}"></c:out></td>
          <td><c:out value="${fornecedor.email}"></c:out></td>
          
          <td><a href="ManterFornecedorController?acao=prepararEditar&codFornecedor=<c:out value="${fornecedor.codFornecedor}"></c:out>">Editar</a></td>
          <td><a href="ManterFornecedorController?acao=prepararExcluir&codFornecedor=<c:out value="${fornecedor.codFornecedor}"></c:out>">Excluir</a></td>
        </tr>
      </c:forEach>


    </table><br>
    <form class="" action="ManterFornecedorController?acao=prepararIncluir" method="post">
      <input type="submit" name="btnIncluir" value="Incluir">
    </form>
  </body>
</html>

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
        <th>Sexo</th>
        <th>Data de Nascimento</th>
        <th>Estado civil</th>
        <th>Cpf</th>
        <th>rg</th>
        <th>Cep</th>
        <th>Bairro</th>
        <th>Logradouro</th>
        <th>Numero</th>
        <th>Complemento</th>
        <th>Estado</th>
        <th>Cidade</th>
        <th>Telefone 1</th>
        <th>Telefone 2</th>
        <th>Celular</th>
        <th>Email</th>
        
        <th colspan="2">Ação</th>
      <c:forEach items="${clientes}" var="cliente">
        <tr>
          <td><c:out value="${cliente.codCliente}"></c:out></td>
          <td><c:out value="${cliente.nome}"></c:out></td>
          <td><c:out value="${cliente.sexo}"></c:out></td>
          <td><c:out value="${cliente.dataDeNasc}"></c:out></td>
          <td><c:out value="${cliente.estadoCivil}"></c:out></td>
          <td><c:out value="${cliente.cpf}"></c:out></td>
          <td><c:out value="${cliente.rg}"></c:out></td>
          <td><c:out value="${cliente.cep}"></c:out></td>
          <td><c:out value="${cliente.bairro}"></c:out></td>
          <td><c:out value="${cliente.logradouro}"></c:out></td>
          <td><c:out value="${cliente.numero}"></c:out></td>
          <td><c:out value="${cliente.complemento}"></c:out></td>
          <td><c:out value="${cliente.estado}"></c:out></td>
          <td><c:out value="${cliente.cidade}"></c:out></td>
          <td><c:out value="${cliente.telefone1}"></c:out></td>
          <td><c:out value="${cliente.telefone2}"></c:out></td>
          <td><c:out value="${cliente.celular}"></c:out></td>
          <td><c:out value="${cliente.email}"></c:out></td>
          
          <td><a href="ManterClienteController?acao=prepararEditar&codCliente=<c:out value="${cliente.codCliente}"></c:out>">Editar</a></td>
          <td><a href="ManterClienteController?acao=prepararExcluir&codCliente=<c:out value="${cliente.codCliente}"></c:out>">Excluir</a></td>
        </tr>
      </c:forEach>
       </table></br>  
     
      <form action="ManterClienteController?acao=prepararIncluir" method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
      </form>
  </body>
</html>
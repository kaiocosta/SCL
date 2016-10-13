<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>Cadastrar Fornecedor</title>
  </head>
  <body>
      <h2>Cadastrar Fornecedor - ${operacao}</h2>
      Codigo: <input type="text" value="${fornecedor.codFornecedor}"><br>
      Razão Social: <input type="text" value="${fornecedor.razaoSocial}"><br>
      Nome Fantasia: <input type="text" value="${fornecedor.nomeFantasia}"><br>
      CNPJ: <input type="text" value="${fornecedor.cnpj}"><br>
      Nome do Contato: <input type="text" value="${fornecedor.nomeDoContato}"><br>
      <input type="button" name="" value="Cancelar">
      <input type="submit" name="" value="Concluir">
  </body>
</html>

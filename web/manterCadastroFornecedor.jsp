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
      CEP <input type="text" id="" value="${fornecedor.cep}"/><br/>
      Logradouro <input type="text" id="" value="${fornecedor.logradouro}"/>
      Nº <input type="number" id="" value="${fornecedor.numero}"/>
      Complemento <input type="text" id="" value="${fornecedor.complemento}"/><br/>
      Estado <input type="text" id="" value="${fornecedor.estado}"/>
      Cidade <input type="text" id="" value="${fornecedor.cidade}"/>
      Nome do Contato: <input type="text" value="${fornecedor.nomeDoContato}"><br>
      Telefone 1 <input type="number" id="" value="${fornecedor.telefone1}"/>
      Telefone 2 <input type="number" id="" value="${fornecedor.telefone2}"/>
      Celular <input type="number" id="" value="${fornecedor.celular}"/><br/>
      E-mail<input type="email" id="" value="${fornecedor.email}"/>
      <input type="button" name="" value="Cancelar">
      <input type="submit" name="" value="Concluir">
  </body>
</html>

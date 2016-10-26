<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
  <head>
    <meta charset="utf-8">
    <title>Cadastrar Fornecedor</title>
  </head>
  <body>
      <h2>Cadastrar Fornecedor - ${operacao}</h2>
      <form action="ManterFornecedorController?acao=confirmar${operacao}" method="post" name="frmManterFornecedor" onsubmit="return validarFormulario(this)">
      Codigo: <input type="text" name="codFornecedor" value="${fornecedor.codFornecedor}"><br>
      Razão Social: <input type="text" name="razaoSocial" value="${fornecedor.razaoSocial}"><br>
      Nome Fantasia: <input type="text" name="nomeFantasia" value="${fornecedor.nomeFantasia}"><br>
      CNPJ: <input type="text" name="cnpj" value="${fornecedor.cnpj}"><br>
      Nome do Contato: <input type="text" name="nomeContato" value="${fornecedor.nomeContato}"><br>
      CEP <input type="text" name="cep" value="${fornecedor.cep}"/><br/>
      Bairro <input type="text" name="bairro" value="${fornecedor.bairro}"/><br/>
      Logradouro <input type="text" name="logradouro" value="${fornecedor.logradouro}"/>
      Nº <input type="number" name="numero" value="${fornecedor.numero}"/>
      Complemento <input type="text" name="complemento" value="${fornecedor.complemento}"/><br/>
      Estado <input type="text" name="estado" value="${fornecedor.estado}"/>
      Cidade <input type="text" name="cidade" value="${fornecedor.cidade}"/>
      Telefone 1 <input type="text" name="telefone1" value="${fornecedor.telefone1}"/>
      Telefone 2 <input type="text" name="telefone2" value="${fornecedor.telefone2}"/>
      Celular <input type="text" name="celular" value="${fornecedor.celular}"/><br/>
      E-mail<input type="text" name="email" value="${fornecedor.email}"/>
      
      <input type="button" name="" value="Cancelar">
      <input type="submit" name="" value="Concluir">
      </form>
</html>

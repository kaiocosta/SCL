<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>-->
<html>
  <head>
    <meta charset="utf-8">
    <title>Cadastrar Fornecedor</title>

    <style>
    input{

			margin: 8px 0;
			padding: 12px 20px;
			box-sizing: border-box;
			}
			a{
				color: #000;
				text-decoration: none;
				background-color: #BBB;
				font-weight: bolder;
				padding: 0.5em;
			}
			a:visited{
				color: #000;
				text-decoration: none;
				background-color: #BBB;
				font-weight: bolder;
				padding: 0.5em;
			}
			.centro{
				border-radius: 20px;
				margin-top: 2em;
				margin-left: auto;
				margin-right: auto;
				width: 65%;
				box-shadow: 4px 4px 45px grey;
				padding: 1em 3em 3em 3em;  }

			h1,h2,h3,h4{
				text-align: center;
				margin-left: auto;
				margin-right: auto;}
				th{
					border: solid;
					background-color: #000;
					padding: 1em;
					color: #FFF;
				}
				table,td,tr{
					border: none;
					text-align: center;
					margin-left: auto;
					margin-right: auto;
					border-collapse: collapse;
					border-width: thin;
					text-align: left;
					}
					input[type=submit],[type=reset],[type=button]{
            margin-top: 1em;
            position: relative;
            border: none;
            color: #FFF;
            text-decoration: none;
            background-color: #000;
            padding: 0.5em;
            width: 48%;
            margin-left: auto;
            margin-right: auto;

            }

    </style>
  </head>
  <body>
      <div class="centro">
        <h2>Cadastrar Fornecedor - ${operacao}</h2>

<div class="tabela" style="column-count:2; -moz-column-count:2; -webkit-column-count:2; column-rule:1px  #000; -moz-column-rule:1px  #000; -webkit-column-rule:1px  #000; –moz-column-gap:20px; –webkit-column-gap:20px;">
  <table>
      <form action="ManterFornecedorController?acao=confirmar${operacao}" method="post" name="frmManterFornecedor" onsubmit="return validarFormulario(this)">
    <tr><td>Codigo:  </td><td><input type="number" required="" name="codFornecedor" value="${fornecedor.codFornecedor}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>/></td><tr>
    <tr><td>Razão Social: </td><td><input type="text" required="" name="razaoSocial" value="${fornecedor.razaoSocial}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>CNPJ: </td><td><input type="number" required="" name="cnpj" value="${fornecedor.cnpj}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>Nome Fantasia:  </td><td><input type="text" required="" name="nomeFantasia" value="${fornecedor.nomeFantasia}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>Nome do Contato: </td><td><input type="text" required="" name="nomeContato" value="${fornecedor.nomeContato}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>CEP </td><td><input type="number" required="" name="cep" value="${fornecedor.cep}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>Bairro </td><td><input type="text" name="bairro" value="${fornecedor.bairro}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/></td><tr>
    <tr><td>Logradouro </td><td><input type="text" name="logradouro" value="${fornecedor.logradouro}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>Nº </td><td><input type="number" name="numero" value="${fornecedor.numero}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>Complemento </td><td><input type="text" name="complemento" value="${fornecedor.complemento}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/></td><tr>
    <tr><td>Estado </td><td><input type="text" name="estado" value="${fornecedor.estado}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>Cidade </td><td><input type="text" name="cidade" value="${fornecedor.cidade}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>Telefone 1  </td><td><input type="number" required="" name="telefone1" value="${fornecedor.telefone1}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>Telefone 2 </td><td><input type="text" name="telefone2" value="${fornecedor.telefone2}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
    <tr><td>Celular </td><td><input type="text" name="celular" value="${fornecedor.celular}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/></td><tr>
  <tr><td>E-mail</td><td><input type="text" name="email" value="${fornecedor.email}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td><tr>
  </table>
</div>

        <input type="submit" name="" value="Concluir"> <br>
        <input type="button" name="" value="Cancelar">
        </form>
      </div>
</html>

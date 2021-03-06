<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>-->

﻿<html>
<head>
	<meta charset="UTF-8"/>
	<title>Cadastro de Usuarios</title>

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
					margin-right: auto;}

	</style>
</head>
<body>
<div class="centro">
	<h2>Cadastro de usuarios - ${operacao}</h2>
	<form action="ManterUsuarioController?acao=confirmar${operacao}" method="post" name="frmManterUsuario" onsubmit="return validarFormulario(this)">
<div class="tabela" style="column-count:2; -moz-column-count:2; -webkit-column-count:2; column-rule:1px dotTed  #000; -moz-column-rule:1px dotTed  #000; -webkit-column-rule:1px dotTed  #000; –moz-column-gap:20px; –webkit-column-gap:20px;">
	<table >
		<tr><td>Código </td><td><input type="number" required="" name="codUsuario" value="${usuario.codUsuario}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>/> </td></tr>
		<tr><td>Nome </td><td><input type="text" required="" name="nome" value="${usuario.nome}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
		<tr><td>Sexo </td><td><input type="text" name="sexo" value="${usuario.sexo}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td></tr>
		<tr><td>Data de Nasc.</td><td><input type="number" required="" name="dataDeNasc" value="${usuario.dataDeNasc}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td></tr>
		<tr><td>Estado Civil </td><td><input type="text" name="estadoCivil" value="${usuario.estadoCivil}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td></tr>
		<tr><td>CPF </td><td><input type="number" required="" name="cpf" value="${usuario.cpf}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
		<tr><td>RG </td><td><input type="text" required="" name="rg" value="${usuario.rg}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
		<tr><td>Login </td><td><input type="text" required="" name="login" value="${usuario.login}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td></tr>
		<tr><td>Senha </td><td><input type="text" required="" name="senha" value="${usuario.senha}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
		<tr><td>CEP </td><td><input type="number" required="" name="cep" value="${usuario.cep}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
		<tr><td>Bairro </td><td><input type="text" name="bairro" value="${usuario.bairro}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
		<tr><td>Logradouro </td><td><input type="text" name="logradouro" value="${usuario.logradouro}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td></tr>
		<tr><td>Nº </td><td><input type="text" name="numero" value="${usuario.numero}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
		<tr><td>Complemento </td><td><input type="text" name="complemento" value="${usuario.complemento}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
		<tr><td>Cidade </td><td><input type="text" name="cidade" value="${usuario.cidade}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td></tr>
		<tr><td>Estado </td><td><input type="text" name="estado" value="${usuario.estado}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
		<tr><td>Telefone 1 </td><td><input type="number" required="" name="telefone1" value="${usuario.telefone1}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td></tr>
		<tr><td>Telefone 2 </td><td><input type="text" name="telefone2" value="${usuario.telefone2}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
		<tr><td>Celular </td><td><input type="text" name="celular" value="${usuario.celular}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>    </td></tr>
		<tr><td>E-mail</td><td><input type="text" name="email" value="${usuario.email}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>   </td></tr>
	</table>
</div>


		<input type="submit" value=" Enviar " /><br>
		<input type="reset" value="Cancelar" />
	</form>
</div>

</body>


</html>

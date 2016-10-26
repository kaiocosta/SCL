<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

﻿<html>
<head>
	<meta charset="UTF-8"/>
	<title>Cadastro de Usuarios</title>
</head>
<body>
	<h2>Cadastro de usuarios - ${operacao}</h2>
	<form action="ManterUsuarioController?acao=confirmar${operacao}" method="post" name="frmManterUsuario" onsubmit="return validarFormulario(this)">
            <ul>
		<li>Código <input type="text" name="codUsuario" value="${usuario.codUsuario}"/></li><br/>
		<li>Nome <input type="text" name="nome" value="${usuario.nome}"/></li><br/>
                <li>Sexo <input type="text" name="sexo" value="${usuario.sexo}"/></li><br/>
                <li>Data de Nascimento <input type="text" name="dataDeNasc" value="${usuario.dataDeNasc}"/></li><br/>
                <li>Estado Civil <input type="text" name="estadoCivil" value="${usuario.estadoCivil}"/></li><br/>
                <li>CPF <input type="text" name="cpf" value="${usuario.cpf}"/></li><br/>
		<li>RG <input type="text" name="rg" value="${usuario.rg}"/></li><br/>
                <li>Login <input type="text" name="login" value="${usuario.login}"/></li><br/>
		<li>Senha <input type="text" name="senha" value="${usuario.senha}"/></li><br/>
		<li>CEP <input type="text" name="cep" value="${usuario.cep}"/></li><br/>
                <li>Bairro <input type="text" name="bairro" value="${usuario.bairro}"/></li><br/>
                <li>Logradouro <input type="text" name="logradouro" value="${usuario.logradouro}"/></li><br/>
                <li>Nº <input type="text" name="numero" value="${usuario.numero}"/></li><br/>
                <li>Complemento <input type="text" name="complemento" value="${usuario.complemento}"/></li><br/>
                <li>Estado <input type="text" name="estado" value="${usuario.estado}"/></li><br/>
                <li>Cidade <input type="text" name="cidade" value="${usuario.cidade}"/></li><br/>
                <li>Telefone 1 <input type="text" name="telefone1" value="${usuario.telefone1}"/></li><br/>
                <li>Telefone 2 <input type="text" name="telefone2" value="${usuario.telefone2}"/></li><br/>
                <li>Celular <input type="text" name="celular" value="${usuario.celular}"/><br/></li><br/>
                <li>E-mail<input type="text" name="email" value="${usuario.email}"/></li><br/>
		</ul><br/>
		<br/>
		<input type="reset" value="Cancelar" />
		<input type="submit" value=" Enviar " />
	</form>

</body>


</html>

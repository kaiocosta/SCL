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
            Código <input type="text" name="codUsuario" value="${usuario.codUsuario}"/>
            Nome <input type="text" name="nome" value="${usuario.nome}"/>
            Sexo <input type="text" name="sexo" value="${usuario.sexo}"/>
            Data de Nascimento <input type="text" name="dataDeNasc" value="${usuario.dataDeNasc}"/>
            Estado Civil <input type="text" name="estadoCivil" value="${usuario.estadoCivil}"/><br>
            CPF <input type="text" name="cpf" value="${usuario.cpf}"/>
            RG <input type="text" name="rg" value="${usuario.rg}"/>
            Login <input type="text" name="login" value="${usuario.login}"/>
            Senha <input type="text" name="senha" value="${usuario.senha}"/><br>
            CEP <input type="text" name="cep" value="${usuario.cep}"/>
            Bairro <input type="text" name="bairro" value="${usuario.bairro}"/>
            Logradouro <input type="text" name="logradouro" value="${usuario.logradouro}"/>
            Nº <input type="text" name="numero" value="${usuario.numero}"/>
            Complemento <input type="text" name="complemento" value="${usuario.complemento}"/><br>
            Estado <input type="text" name="estado" value="${usuario.estado}"/>
            Cidade <input type="text" name="cidade" value="${usuario.cidade}"/>
            Telefone 1 <input type="text" name="telefone1" value="${usuario.telefone1}"/>
            Telefone 2 <input type="text" name="telefone2" value="${usuario.telefone2}"/>
            Celular <input type="text" name="celular" value="${usuario.celular}"/>
            E-mail<input type="text" name="email" value="${usuario.email}"/>
            <br/>	
            <input type="reset" value="Cancelar" />
            <input type="submit" value=" Enviar " />
	</form>

</body>


</html>

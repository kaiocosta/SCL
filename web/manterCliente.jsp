<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<meta charset="UTF-8"/>
	<title>Cadastro de Clientes</title>

</head>
<body>
	<h2>Categoria de Clientes - ${operacao}</h2>
	<form action="ManterClienteController?acao=confirmar${operacao}" method="post" name="frmManterCliente" onsubmit="return validarFormulario(this)">
		Código <input type="text" name="codCliente" value="${cliente.codCliente}"/><br/>
		Nome <input type="text" name="nome" value="${cliente.nome}"/>
                Sexo <input type="text" name="sexo" value="${cliente.sexo}"/>
                Data de nascimento <input type="text" name="dataDeNasc" value="${cliente.dataDeNasc}"/>
		Estado Civil <input type="text" name="estadoCivil" value="${cliente.estadoCivil}"/>
                CPF <input type="text" name="cpf" value="${cliente.cpf}"/>
		RG <input type="text" name="rg" value="${cliente.rg}"/>
                CEP <input type="text" name="cep" value="${cliente.cep}"/><br/>
                Bairro <input type="text" name="bairro" value="${cliente.bairro}"/>
	        Logradouro <input type="text" name="logradouro" value="${cliente.logradouro}"/>
                Nº <input type="text" name="numero" value="${cliente.numero}"/>
                Complemento <input type="text" name="complemento" value="${cliente.complemento}"/><br/>
                Estado <input type="text" name="estado" value="${cliente.estado}"/>
                Cidade <input type="text" name="cidade" value="${cliente.cidade}"/>
                Telefone 1 <input type="text" name="telefone1" value="${cliente.telefone1}"/>
                Telefone 2 <input type="text" name="telefone2" value="${cliente.telefone2}"/>
                Celular <input type="text" name="celular" value="${cliente.celular}"/><br/>
                E-mail<input type="text" name="email" value="${cliente.email}"/>
		<br/>
		<br/>
		<input type="reset" value="Cancelar" />
		<input type="submit" value="Enviar" />


	</form>

</body>


</html>

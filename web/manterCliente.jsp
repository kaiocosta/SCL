<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<meta charset="UTF-8"/>
	<title>Cadastro de Clientes</title>

	<style>
		input[type=text]{
			width: 40%;
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
					padding: 0.8em;
					margin-left: auto;
					margin-right: auto;
					border-collapse: collapse;
					border-width: thin;
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
				left: 26%;}

	</style>
</head>
<body>
	<div class="centro">
		<h2>Categoria de Clientes - ${operacao}</h2>
		<form action="ManterClienteController?acao=confirmar${operacao}" method="post" name="frmManterCliente" onsubmit="return validarFormulario(this)">
                    Código <br><input type="number" required="" name="codCliente" value="${cliente.codCliente}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>/><br/>
                    Nome <br><input type="text" required="" name="nome" value="${cliente.nome}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
                    Sexo <input type="text" required="" name="sexo" value="${cliente.sexo}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
	            Data de nascimento <br><input type="date" required="" name="dataDeNasc" value="${cliente.dataDeNasc}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
                    Estado Civil <input type="text" name="estadoCivil" value="${cliente.estadoCivil}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
	            CPF <br><input type="number" required="" name="cpf" value="${cliente.cpf}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
                    RG <input type="text" required="" name="rg" value="${cliente.rg}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br>
	            CEP <br><input type="number" required="" name="cep" value="${cliente.cep}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/><br>
	            Bairro <br><input type="text" name="bairro" value="${cliente.bairro}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
		    Logradouro <input type="text" name="logradouro" value="${cliente.logradouro}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
	            Nº <br><input type="text" name="numero" value="${cliente.numero}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
                    Estado <input type="text" name="estado" value="${cliente.estado}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
                    Cidade <br><input type="text" name="cidade" value="${cliente.cidade}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
	            Complemento <input type="text" name="complemento" value="${cliente.complemento}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/>
	            Telefone 1 <br><input type="number" required="" name="telefone1" value="${cliente.telefone1}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
	            Telefone 2 <input type="text" name="telefone2" value="${cliente.telefone2}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
	            Celular <br><input type="number" required="" name="celular" value="${cliente.celular}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/><br>
	            E-mail<br><input type="text" name="email" value="${cliente.email}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
                    <br/>
                    <input type="submit" value="Enviar" /><br>
                    <input type="reset" value="Cancelar" />
                </form>
	</div>

</body>


</html>

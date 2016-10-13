<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<meta charset="UTF-8"/>
	<title>Castro de Clientes</title>

</head>
<body>
	<h2>Categoria de Clientes - ${operacao}</h2>
	<form>
		Código <input type="text" value="${cliente.codCliente}"/><br/>
		Nome <input type="text" value="${cliente.nome}"/>
		CPF <input type="text" id=""/>
		RG <input type="text" id=""/>
		Sexo <select>
				<option value="default">Selecione</option>
  				<option value="Masc">Masculino</option>
  				<option value="Fem">Feminino</option>
			</select><br/>

		Data de nascimento <input type="date" id=""/>
		Estado Civil
			<select>
				<option value="default">Selecione</option>
  				<option value="solt">Solteiro</option>
  				<option value="cas">Casado</option>
  				<option value="divor">Divorciado</option>
			</select><br/>

		CEP <input type="text" id="" /><br/>
		Logradouro <input type="text" id=""/>
		NÂº <input type="number" id=""/>
		Complemento <input type="text" id=""/><br/>
		Telefone 1 <input type="number" id=""/>
		Telefone 2 <input type="number" id=""/>
		Celular <input type="number" id=""/><br/>
		E-mail<input type="email" id="" />
		<br/>
		<br/>
		<input type="reset" value="Cancelar" />
		<input type="submit" value=" Enviar " />


	</form>

</body>


</html>

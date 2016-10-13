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
		CPF <input type="text" id="" value="${cliente.cpf}"/>
		RG <input type="text" id="" value="${cliente.rg}"/>
		Sexo <select>
				<option value="default">Selecione</option>
  				<option value="Masc">Masculino</option>
  				<option value="Fem">Feminino</option>
			</select><br/>

		Data de nascimento <input type="date" id="" value="${cliente.dataDeNascimento}"/>
		Estado Civil
			<select>
				<option value="default">Selecione</option>
  				<option value="solt">Solteiro</option>
  				<option value="cas">Casado</option>
  				<option value="divor">Divorciado</option>
			</select><br/>

		CEP <input type="text" id="" value="${cliente.cep}"/><br/>
                Logradouro <input type="text" id="" value="${cliente.logradouro}"/>
                Nº <input type="number" id="" value="${cliente.numero}"/>
                Complemento <input type="text" id="" value="${cliente.complemento}"/><br/>
                Estado <input type="text" id="" value="${cliente.estado}"/>
                Cidade <input type="text" id="" value="${cliente.cidade}"/>
                Telefone 1 <input type="number" id="" value="${cliente.telefone1}"/>
                Telefone 2 <input type="number" id="" value="${cliente.telefone2}"/>
                Celular <input type="number" id="" value="${cliente.celular}"/><br/>
                E-mail<input type="email" id="" value="${cliente.email}"/>
		<br/>
		<br/>
		<input type="reset" value="Cancelar" />
		<input type="submit" value=" Enviar " />


	</form>

</body>


</html>

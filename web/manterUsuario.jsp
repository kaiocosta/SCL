<html>
<head>
	<meta charset="UTF-8"/>
	<title>Cadastro de Usuarios</title>

</head>
<body>
	<h2>Cadastro de usuarios - ${operacao}</h2>
	<form>
		Código <input type="text" id="codigo" value="${usuario.codUsuario}"/><br/>
		Nome <input type="text" id="" value="${usuario.nome}"/>
                Login <input type="text" id="" value="${usuario.login}"/>
		Senha <input type="password" id="" value="${usuario.senha}"/><br/>
		CPF <input type="text" id="" value="${usuario.cpf}"/>
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

		CEP <input type="text" id="" value="${usuario.cep}"/><br/>
                Logradouro <input type="text" id="" value="${usuario.logradouro}"/>
                Nº <input type="number" id="" value="${usuario.numero}"/>
                Complemento <input type="text" id="" value="${usuario.complemento}"/><br/>
                Estado <input type="text" id="" value="${usuario.estado}"/>
                Cidade <input type="text" id="" value="${usuario.cidade}"/>
                Telefone 1 <input type="number" id="" value="${usuario.telefone1}"/>
                Telefone 2 <input type="number" id="" value="${usuario.telefone2}"/>
                Celular <input type="number" id="" value="${usuario.celular}"/><br/>
                E-mail<input type="email" id="" value="${usuario.email}"/>
		<br/>
		<br/>
		<input type="reset" value="Cancelar" />
		<input type="submit" value=" Enviar " />


	</form>

</body>


</html>

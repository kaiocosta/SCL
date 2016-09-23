<html>
<head>
	<meta charset="UTF-8"/>
	<title>Consulta Filmes</title>

</head>
<body>
	<h2>Filmes</h2>
	<form>
		<input type="submit" value="Alterar" />	
		<input type="submit" value="Cadastrar" />
		<p>Adicionar/Editar</p>
		<input type="submit" value="Categoria" />
		<input type="submit" value="Genero" />
		
		<table border="1px">
                    <td>Codigo</td>
                    <td>Titulo</td>
                    <td>Categoria</td>
                    <td>Genero</td>
		    <td>Qtd</td>    
		    <td>Disponivel</td>
                </table>
		Codigo: <select> <option value="default">1</option>
			<option value="default">2</option>
			<option value="default">3</option>
			</select>
		Titulo: <input type="text"/>
		Categoria: <option value="default">Lancamento</option>
		Genero: <option value="default">Aventura</option>
		<input type="submit" value="Redefinir" />
		<input type="submit" value="Pesquisar" />
		
	</form>

</body>


</html>

<html>
<head>
    <title>Cadastro de Filmes</title>
</head>
<body>
	<h2>Cadastro de Filmes - ${operacao}</h2>
	<form>
                C�digo <input type="text" id="codigo" value="${filme.codFilme}"/><br/>
		T�tulo <input type="text" id="titulo" value="${filme.titulo}"/><br/>
		T�tulo original <input type="text" id="" value="${filme.tituloOriginal}"/>
		C�d. C�pia <input type="text" id="copia" /><br/>
		M�dia <input type="text" id="midia" /><br/>
		Custo <input type="text" id="custo" /><br/>
		Genero <input type="text" id="genero" value="${genero.codGenero}"/><br/>
                Categoria <input type="text" id="categoria" value="${categoria.codCategoria}"/><br/>
		Diretor(a) <input type="text" id="diretor" /><br/>
		Ator Principal <input type="text" id="ator" /><br/>
		Premia��es <input type="text" id="premia��es" /><br/>		
		Ano de Produ��o <input type="date" id=""/>
		Ano de Lan�amento <input type="date" id=""/>		
		Fornecedor <input type="text" id="fornecedor" value="${fornecedor.codFornecedor}"/><br/>
		
		<br/>
		<br/>
		<input type="reset" value="Cancelar" />
		<input type="submit" value=" Enviar " />


	</form>

</body>


</html>

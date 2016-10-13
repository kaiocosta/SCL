<html>
<head>
    <title>Cadastro de Filmes</title>
</head>
<body>
	<h2>Cadastro de Filmes - ${operacao}</h2>
	<form>
                Código <input type="text" id="codigo" value="${filme.codFilme}"/><br/>
		Título <input type="text" id="titulo" value="${filme.titulo}"/><br/>
		Título original <input type="text" id="" value="${filme.tituloOriginal}"/>
		Cód. Cópia <input type="text" id="copia" /><br/>
		Mídia <input type="text" id="midia" /><br/>
		Custo <input type="text" id="custo" /><br/>
		Genero <input type="text" id="genero" value="${genero.codGenero}"/><br/>
                Categoria <input type="text" id="categoria" value="${categoria.codCategoria}"/><br/>
		Diretor(a) <input type="text" id="diretor" /><br/>
		Ator Principal <input type="text" id="ator" /><br/>
		Premiações <input type="text" id="premiações" /><br/>		
		Ano de Produção <input type="date" id=""/>
		Ano de Lançamento <input type="date" id=""/>		
		Fornecedor <input type="text" id="fornecedor" value="${fornecedor.codFornecedor}"/><br/>
		
		<br/>
		<br/>
		<input type="reset" value="Cancelar" />
		<input type="submit" value=" Enviar " />


	</form>

</body>


</html>

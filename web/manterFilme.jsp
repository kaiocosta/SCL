<body>
	<h2>Cadastro de Filmes</h2>
	<form>
                C�digo <input type="text" id="codigo" value="${filme.codFilme}"/><br/>
		T�tulo <input type="text" id="titulo" value="${filme.titulo}"/><br/>
		T�tulo original <input type="text" id="" value="${filme.tituloOriginal}"/>
		C�d. C�pia <input type="text" id="copia" /><br/>
		M�dia <input type="text" id="midia" /><br/>
		Custo <input type="text" id="custo" /><br/>
		
		Categoria <select>
				<option value="default">Selecione</option>
  				<option value="Lan�a">Lan�aamento</option>
  				<option value="Norm">Normal</option>
  				<option value="Ant">Antigo</option>
			</select><br/>

		G�nero <select>
				<option value="default">Selecione</option>
  				<option value="Av">Aventura</option>
  				<option value="A��o">A��o</option>
  				<option value="Romance">Romance</option>
			</select><br/>	

		Diretor(a) <input type="text" id="diretor" /><br/>
		Ator Principal <input type="text" id="ator" /><br/>
		Premia��es <input type="text" id="premia��es" /><br/>	
		
		
		Ano de Produ��o <input type="date" id=""/>
		Ano de Lan�amento <input type="date" id=""/>		
		Fornecedor <input type="text" id="fornecedor" /><br/>
		
		<br/>
		<br/>
		<input type="reset" value="Cancelar" />
		<input type="submit" value=" Enviar " />


	</form>

</body>


</html>

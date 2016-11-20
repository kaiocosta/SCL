<html>
<head>
	<meta charset="UTF-8"/>
	<title>Historico de Filmes</title>

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
			input[type=submit]{
				margin-top: 5em;
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
		<h2>Historico de Filmes</h2>
		<form>
			Filme <br><input type="text" id="codigo" /><br/>
			Data inicio <br><input type="text" id=""/><br>
			Data fim <br><input type="text" id=""/><br/>
			<input type="submit" value=" Enviar " />

									<table border="1px">
											<td>Codigo</td>
											<td>Cliente</td>
											<td>Dt locacao</td>
											<td>Dt devolucao</td>

									</table>
									<input type="submit" value="Consultar Dados do cliente" />
		</form>


	</div>
</body>
</html>

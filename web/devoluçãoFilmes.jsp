<html>
<head>
	<meta charset="UTF-8"/>
	<title>Devolução de Filmes</title>

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
			input[type=submit],[type=reset]{
				margin-top: 1em;
				position: relative;
				border: none;
				color: #FFF;
				text-decoration: none;
				background-color: #000;
				padding: 0.9em;
				width: 35%;
}

	</style>
</head>
<body>
	<div class="centro">
		<h2>Devolução de Filmes</h2>
		<form>
			Código <br><input type="text" id="codigo" /><br/>
			Filme <br><input type="text" id="filme"/><br>
			<input type="submit" value="Adicionar" /><br><br>

			Valor Total:<br><br>
			Valor pago na locação <br><input type="text" id="valor pago" /><br/>
			Valor pago na entrega <br><input type="text" id="valor a pagar" /><br/>
			Débito acrescido:<br>
			Usuário:<br>

			<br/>
			<br/>
			<input type="reset" value="Cancelar" />
			<input type="submit" value="Concluir" />


		</form>
	</div>

</body>


</html>

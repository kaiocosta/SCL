<html>
<head>
	<meta charset="UTF-8"/>
	<title>Pagamento de debitos</title>

	<style>
		select,input[type=text],[type=number]{
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
			input[type=submit],[type=button],[type=reset]{
				margin-top: .5em;
				position: relative;
				border: none;
				color: #FFF;
				text-decoration: none;
				background-color: #000;
				padding: 0.5em;
				width: 48%;
				left: 30%;}

	</style>
</head>
<body>
	<div class="centro">
		<h2>Pagamento de debitos</h2>

			Cliente <br><input type="text"/>
			<br>Dependente:
				<select>
				<option>Dependente</option>
			</select>

			<br>Valor total do debito:<br>
			<br>valor pago: <input type="text"/>
	                <br>Valor do debito atualizado:<br><br>
			<input type="submit" value="Concluir" /><br>
			<br><input type="submit" value="Cancelar" />
	</div>
</body>


</html>

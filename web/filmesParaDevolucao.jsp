<html>
<head>
	<meta charset="UTF-8"/>
	<title>Filmes para devolucao</title>
	<style>
	body{
			text-align: center;
	}
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
input[type=submit],[type=reset]:hover{
	cursor:pointer;
}

	</style>
</head>
<body>
	<div class="centro">
		<h1>Filmes para devolucao</h1>
		<form>
			Selecione a data <br><input type="text" id="codigo" /><br/>
			<input type="submit" value="Atualizar informacoes"/>
	                <table border="1px">
	                    <td>Codigo do Cliente</td>
	                    <td>Nome do Cliente</td>
	                    <td>Cod do Filme</td>
	                    <td>Nome do Filme</td>

	                </table>
		</form>
	</div>

</body>


</html>

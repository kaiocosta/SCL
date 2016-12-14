<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>SCL - Sistema de Cadastro para Locadoras</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
          <style >
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

            text-align: center;
    				border-radius: 20px;
    				margin-top: 2em;
    				margin-left: auto;
    				margin-right: auto;
    				width: 65%;
    				box-shadow: 4px 4px 45px grey;
    				padding: 1em 3em 3em 3em;  }

            .botao{
              margin: 2em;
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
          <h1>Bem-vindo ao SCL</h1>
          <a href="ConsultaFornecedorController"><button class="botao">Consultar Fornecedores</button></a>
          <a href="ConsultaGeneroController"><button class="botao">Consultar Generos</button></a>
          <a href="ConsultaUsuarioController"><button class="botao">Consultar Usuarios</button></a>
          <a href="ConsultaCategoriaController"><button class="botao">Consultar Categorias</button></a>
          <a href="ConsultaClienteController"><button class="botao">Consultar Clientes</button></a>
          <a href="ConsultaTipoDeMidiaController"><button class="botao">Consultar Tipo de Midia</button></a>
          <a href="ConsultaFilmeController"><button class="botao">Consultar Filmes</button></a>
        </div>
    </body>
</html>

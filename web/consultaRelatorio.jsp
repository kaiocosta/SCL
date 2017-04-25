<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="lib/bootstrap/bootstrap.css">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/logo-nav.css" rel="stylesheet">
        <title>Consulta Relatorios</title>
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
                left: 26%;

            }
        </style>
    </head>
    <body>
        <div class="centro">
            <table class="table table-striped">
                <tr>Relatorios de Filmes</tr>
                <th>Relatorio</th>
                <th>Parametro</th>
                <th>Gerar</th>

                <tr>
                    <td>Filmes</td>
                    <td>-</td>
                    <td>
                        <form action="RelatorioControllerFilme" method="post">
                            <button class="btn btn-primary btn-block" type="submit" value="Gerar">Gerar</button>
                        </form>
                    </td>
                </tr>

                <tr>
                    <td>Por Genero</td>
                    <td>
                        <form action="RelatorioControllerFilmePGenero" method="post">
                            <input type="text" name="txtNomeGenero"/><br/>
                    </td>
                    <td>
                        <button class="btn btn-primary btn-block" type="submit" value="Gerar">Gerar</button>
                        </form>
                    </td>
                </tr>

                <tr>
                    <td>Por Categoria</td>
                    <td>
                        <form action="RelatorioControllerFilmePCategoria" method="post">
                            <input type="text" name="txtNomeCategoria"/><br/>
                    </td>
                    <td>
                        <button class="btn btn-primary btn-block" type="submit" value="Gerar">Gerar</button>
                        </form>
                    </td>
                </tr>
            </table>
            
            <table class="table table-striped">
                <tr>Relatorios de Categoria</tr>
                <th>Relatorio</th>
                <th>Parametro</th>
                <th>Gerar</th>
                <tr>
                    <td>Categorias</td>
                    <td>-</td>
                    <td>
                        <form action="RelatorioControllerCategoria" method="post">
                            <button class="btn btn-primary btn-block" type="submit" value="Gerar">Gerar</button>
                        </form>
                    </td>
                </tr>
            </table>
            
            <table class="table table-striped">
                <tr>Relatorios de Genero</tr>
                <th>Relatorio</th>
                <th>Parametro</th>
                <th>Gerar</th>
                <tr>
                    <td>Generos</td>
                    <td>-</td>
                    <td>
                        <form action="RelatorioControllerGenero" method="post">
                            <button class="btn btn-primary btn-block" type="submit" value="Gerar">Gerar</button>
                        </form>
                    </td>
                </tr>
            </table>
            <table class="table table-striped">
                <tr>Relatorios de Fornecedor</tr>
                <th>Relatorio</th>
                <th>Parametro</th>
                <th>Gerar</th>
                <tr>
                    <td>Fornecedores</td>
                    <td>-</td>
                    <td>
                        <form action="RelatorioControllerFornecedor" method="post">
                            <button class="btn btn-primary btn-block" type="submit" value="Gerar">Gerar</button>
                        </form>
                    </td>
                </tr>
            </table>
            
            <table class="table table-striped">
                <tr>Relatorios de Midias</tr>
                <th>Relatorio</th>
                <th>Parametro</th>
                <th>Gerar</th>
                <tr>
                    <td>Midias</td>
                    <td>-</td>
                    <td>
                        <form action="RelatorioControllerMidia" method="post">
                            <button class="btn btn-primary btn-block" type="submit" value="Gerar">Gerar</button>
                        </form>
                    </td>
                </tr>
            </table>
            <table class="table table-striped">
                <tr>Relatorios de Usuario</tr>
                <th>Relatorio</th>
                <th>Parametro</th>
                <th>Gerar</th>
                <tr>
                    <td>Usuarios</td>
                    <td>-</td>
                    <td>
                        <form action="RelatorioControllerUsuario" method="post">
                            <button class="btn btn-primary btn-block" type="submit" value="Gerar">Gerar</button>
                        </form>
                    </td>
                </tr>
            </table>
            <table class="table table-striped">
                <tr>Relatorios de Clientes</tr>
                <th>Relatorio</th>
                <th>Parametro</th>
                <th>Gerar</th>
                <tr>
                    <td>Clientes</td>
                    <td>-</td>
                    <td>
                        <form action="RelatorioControllerCliente" method="post">
                            <button class="btn btn-primary btn-block" type="submit" value="Gerar">Gerar</button>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>Por Bairro</td>
                    <td>
                        <form action="RelatorioControllerClientePBairro" method="post">
                            <input type="text" name="txtNomeBairro"/><br/>
                    </td>
                    <td>
                        <button class="btn btn-primary btn-block" type="submit" value="Gerar">Gerar</button>
                        </form>
                    </td>
                </tr>

            </table>
        </div>
    </body>
</html>
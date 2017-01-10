<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>-->

<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <title>Incluir Categoria</title>

    <style>
          form{
            margin-left: auto;
            margin-right: auto;
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



    </style>
  </head>
  <body>
    <div class="centro">
      <h2>Categoria Cadastro - ${operacao}</h2>
      <form action="ManterCategoriaController?acao=confirmar${operacao}" method="post">
        Codigo: <input class="span3" type="number" required="" name="codCategoria" value="${categorias.codCategoria}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>/> <br>
        Nome: <input class="span3" type="text" required="" name="nome" value="${categorias.nome}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br>
        Descrição <input class="span3" type="text"name="descricao" value="${categorias.descricao}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br>
        Período de troca: <input class="span3" type="text" name="periodoTrocaCategoria" value="${categorias.periodoTrocaCategoria}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br>
        Próxima categoria: <input class="span3" type="text" name="proximaCategoria" value="${categorias.proximaCategoria}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br>
<br>
        <input type="button" name="" value="Cancelar" class="btn btn-danger">
        <input type="submit" name="" value="Concluir" class="btn btn-primary pull-right">

      </form>
    </div>
  </body>
  <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>Incluir Categoria</title>

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
        input[type=submit],[type=button]{
          margin-top: .5em;
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
      <h2>Categoria Cadastro - ${operacao}</h2>
      <form action="ManterCategoriaController?acao=confirmar${operacao}" method="post">
        Codigo: <input type="number" required="" name="codCategoria" value="${categorias.codCategoria}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>/> <br>
        Nome: <input type="text" required="" name="nome" value="${categorias.nome}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br>
        Descrição <input name="descricao" rows="8" cols="40" value="${categorias.descricao}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br>
        Período de troca: <input type="text" name="periodoTrocaCategoria" value="${categorias.periodoTrocaCategoria}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br>
        Próxima categoria: <input type="text" name="proximaCategoria" value="${categorias.proximaCategoria}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br>
        <input type="button" name="" value="Cancelar"><br>
        <input type="submit" name="" value="Concluir">
      </form>
    </div>
  </body>
</html>

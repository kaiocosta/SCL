<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>-->

<html>
  <head>
    <meta charset="utf-8">
    <title>Incluir Categoria</title>

    <style>
    input{

      margin: 8px 0;
      padding: 12px 20px;
      box-sizing: border-box;
      }
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
          table,td,tr{
  					border: none;
  					margin-left: auto;
  					margin-right: auto;
  					border-collapse: collapse;
  					border-width: thin;
  					text-align: left;
  					}
          input[type=submit],[type=reset],[type=button]{
            text-align: center;
            margin-top: .5em;
            position: relative;
            border: none;
            color: #FFF;
            text-decoration: none;
            background-color: #000;
            padding: 0.5em;
            width: 48%;
            margin-left: auto;
            margin-right: auto;}
            
    </style>
  </head>
  <body>
    <div class="centro">
      <h2>Categoria Cadastro - ${operacao}</h2>
<div class="tabela">
  <table>

  <form action="ManterCategoriaController?acao=confirmar${operacao}" method="post">
    <tr><td>Codigo:</td><td> <input   type="number" required="" name="codCategoria" value="${categorias.codCategoria}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>/></td></tr>
    <tr><td>Nome:</td><td> <input   type="text" required="" name="nome" value="${categorias.nome}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> </td></tr>
    <tr><td>Descrição</td><td> <input   type="text"name="descricao" value="${categorias.descricao}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> </td></tr>
    <tr><td>Período de troca:</td><td> <input   type="text" name="periodoTrocaCategoria" value="${categorias.periodoTrocaCategoria}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></td></tr>
    <tr><td>Próxima categoria:</td><td> <input   type="text" name="proximaCategoria" value="${categorias.proximaCategoria}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> </td></tr>

  </table>
</div>

        <input type="submit" name="" value="Concluir" ><br>
        <input type="button" name="" value="Cancelar">
      </form>
    </div>
  </body>
</html>

<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Genero</title>

        <style>
        input{

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
              margin-left: auto;
              margin-right: auto;
              border-collapse: collapse;
              border-width: thin;
              text-align: left;
              }
              input[type=submit],[type=reset],[type=button]{
                margin-top: 1em;
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
          <h2>Cadastro Genero - ${operacao}</h2>
        <table>
          <form action="ManterGeneroController?acao=confirmar${operacao}" method="post">
          <tr><td>Nome:</td> <td><input type="text" name="nome" required="" value="${genero.nome}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br><tr>
          <tr><td>Codigo:</td> <td><input type="number" name="codGenero" required="" value="${genero.codGenero}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>/> <br><tr>
          <tr><td>Descrição</td> <td><input type="text" name="descricao" rows="8" cols="40" value="${genero.descricao}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br><tr>

        </table>  <input type="submit" name="" value="Concluir"><br>
          <input type="button" name="" value="Cancelar">
          </form>
        </div>
    </body>
</html>

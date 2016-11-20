<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Genero</title>

        <style>
          input[type=text],[type=number]{
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
              left: 5%;}

        </style>
    </head>
    <body>
        <div class="centro">
          <h2>Cadastro Genero - ${operacao}</h2>
          <form action="ManterGeneroController?acao=confirmar${operacao}" method="post">
          Codigo: <input type="text" name="codGenero" value="${genero.codGenero}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>/> <br>
          Nome: <input type="text" name="nome" value="${genero.nome}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br>
          Descrição <input name="descricao" rows="8" cols="40" value="${genero.descricao}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
          <input type="submit" name="" value="Concluir">
          <input type="button" name="" value="Cancelar">
          </form>
        </div>
    </body>
</html>

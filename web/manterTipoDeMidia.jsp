<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Tipo de Midia - ${operacao}</title>
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
        <h2>Cadastrar Tipo de Midia - ${operacao}</h2>
        <table>
          <form action="ManterTipoDeMidiaController?acao=confirmar${operacao}" method="post">
          <tr><td>Código:</td> <td><input type="number" required="" name="codTipoDeMidia" value="${tipoDeMidia.codTipoDeMidia}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>/>  <br/>
          <tr><td>Nome:</td> <td><input type="text" name="nome" required="" value="${tipoDeMidia.nome}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
          <tr><td>Descrição </td><td><input type="text" name="descricao" rows="8" cols="40" value="${tipoDeMidia.descricao}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
        </table>
        <input type="submit" name="" value="Concluir"><br>
        <input type="button" name="" value="Cancelar">
        </form>
      </div>
    </body>
</html>

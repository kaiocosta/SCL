<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Tipo de Midia</title>

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
      			input[type=submit]{
      				margin-top: 5em;
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
     <h1>Pesquisa Tipo de Midia</h1>
      <table border = 1>
          <th>Cod.</th>
          <th>Nome</th>
          <th>Descrição</th>

          <th colspan="2">Ação</th>
        <c:forEach items="${tipodemidia}" var="tipoDeMidia">
          <tr>
            <td><c:out value="${tipoDeMidia.codTipoDeMidia}"></c:out></td>
            <td><c:out value="${tipoDeMidia.nome}"></c:out></td>
            <td><c:out value="${tipoDeMidia.descricao}"></c:out></td>
            <td><a href="ManterTipoDeMidiaController?acao=prepararEditar&codTipoDeMidia=<c:out value="${tipoDeMidia.codTipoDeMidia}"></c:out>">Editar</a></td>
            <td><a href="ManterTipoDeMidiaController?acao=prepararExcluir&codTipoDeMidia=<c:out value="${tipoDeMidia.codTipoDeMidia}"></c:out>">Excluir</a></td>
          </tr>
        </c:forEach>
         </table></br>

        <form action="ManterTipoDeMidiaController?acao=prepararIncluir" method="post">
          <input type="submit" name="btnIncluir" value="Incluir">
        </form>
   </div>
        <a href="RelatorioControllerMidia"> Relatorio de Midias </a>
    </body>
</html>

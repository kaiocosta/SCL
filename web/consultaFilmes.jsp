<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <title>Consulta Filmes</title>

    <style >
    a{
      margin: 1em 0.2em 0.2em 0.2em;
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
        width: auto;
        box-shadow: 4px 4px 45px grey;
        padding: 1em 3em 3em 3em;  }

      h1,h2,h3,h4{
        text-align: center;
        margin-left: auto;
        margin-right: auto;}
        th{
          border-bottom:  0.9em;
          border: solid;
          background-color: #000;
          padding: 1em;
          color: #FFF;
        }
        table,td,tr{

          text-align: center;
          margin-left: auto;
          margin-right: auto;
          border-collapse: collapse;
          border-width: thin;
          border: none;
          }
      input[type=submit]{
        text-align: center;
        margin-left: auto;
        margin-right: auto;
      }
    </style>
  </head>

  <body>
    <div class="centro">
      <h1>Consulta Filmes</h1>
      <table border = 1>
          <th>Cod.</th>
          <th>Título</th>
          <th>Título Original</th>
          <th>Nome do Diretor</th>
          <th>Ator Principal</th>
          <th>Premiações</th>
          <th>Ano de Produção</th>
          <th>Ano de Lançamento</th>
          <th>Categoria</th>
          <th>Genero</th>
          <th>Tipo de Midia</th>
          <th>Fornecedor</th>
          <th colspan="10">Ação</th>
        <c:forEach items="${filmes}" var="filme">
          <tr>
            <td><c:out value="${filme.codFilme}"></c:out></td>
            <td><c:out value="${filme.titulo}"></c:out></td>
            <td><c:out value="${filme.tituloOriginal}"></c:out></td>
            <td><c:out value="${filme.nomeDiretor}"></c:out></td>
            <td><c:out value="${filme.nomeAtorPrincipal}"></c:out></td>
            <td><c:out value="${filme.nomePremiacoes}"></c:out></td>
            <td><c:out value="${filme.anoProducao}"></c:out></td>
            <td><c:out value="${filme.anoLancamento}"></c:out></td>
            <td><c:out value="${filme.getCategoria().getCodCategoria()}"></c:out></td>
            <td><c:out value="${filme.getGenero().getCodGenero()}"></c:out></td>
            <td><c:out value="${filme.getTipoDeMidia().getCodTipoDeMidia()}"></c:out></td>
            <td><c:out value="${filme.getFornecedor().getCodFornecedor()}"></c:out></td>
            <td><a href="ManterFilmeController?acao=prepararEditar&codFilme=<c:out value="${filme.codFilme}"></c:out>">Editar</a></td>
            <td><a href="ManterFilmeController?acao=prepararExcluir&codFilme=<c:out value="${filme.codFilme}"></c:out>">Excluir</a></td>
          
          </tr>  
          </c:forEach>
          </table></br>
          
        
         

        <form action="ManterFilmeController?acao=prepararIncluir" method="post">
          <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </div>
  </body>
</html>

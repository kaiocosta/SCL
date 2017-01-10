<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <title>Cadastro de Filmes</title>
   <style>
   select{
     margin: 8px 0;
     padding: 12px 20px;
     box-sizing: border-box;
   }

      select[readonly] {
  background: #eee;
  pointer-events: none;
  touch-action: none;
  background-color: white;
}

      input[type=text],[type=number]{
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
  				left: 26%;}

    </style>
</head>
<body>
<div class="centro">
  <h2>Cadastro de Filmes - ${operacao}</h2>
        <div class="tabela" style="column-count:2; -moz-column-count:2; -webkit-column-count:2; column-rule:1px dotTed  #000; -moz-column-rule:1px dotTed  #000; -webkit-column-rule:1px dotTed  #000; –moz-column-gap:20px; –webkit-column-gap:20px;">
          <table>
          <form action="ManterFilmeController?acao=confirmar${operacao}" method="post" name="frmManterFilme" onsubmit="return validarFormulario(this)"></tr>
              <tr><td>Código</td><td>  <input type="number" required="" name="codFilme" required value="${filme.codFilme}" <c:if test="${operacao != 'Incluir'}"> readonly </c:if>/></tr>
              <tr><td>Título</td><td>  <input type="text" required="" name="titulo" value="${filme.titulo}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></tr>
              <tr><td>Título original</td><td>  <input type="text" name="tituloOriginal" value="${filme.tituloOriginal}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></tr>
              <tr><td>Diretor(a)</td><td>  <input type="text" name="nomeDiretor" value="${filme.nomeDiretor}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></tr>
              <tr><td>Ator Principal</td><td> <input type="text" name="nomeAtorPrincipal" value="${filme.nomeAtorPrincipal}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/></tr>
              <tr><td>Premiações</td><td>  <input type="text" name="nomePremiacoes" value="${filme.nomePremiacoes}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/></tr>
              <tr><td>Ano de Produção</td><td>  <input type="number" name="anoProducao" value="${filme.anoProducao}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></tr>
              <tr><td>Ano de Lançamento</td><td> <input type="number" name="anoLancamento" value="${filme.anoLancamento}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/></tr>

              <tr><td>Categoria</td><td> <select name="codCategoria" <c:if test="${operacao == 'Excluir'}"> readonly </c:if>><br>
                <option value="0" <c:if test="${categoria.codCategoria != null}"> selected</c:if>> </option><br>
                    <c:forEach items="${categorias}" var="categoria">
                        <option value="${categoria.codCategoria}" <c:if test="${filme.categoria.codCategoria == categoria.codCategoria}"> selected</c:if>>${categoria.nome}</option>
                    </c:forEach>
            </select></td></tr>
              <tr><td>Genero</td><td> <select name="codGenero" <c:if test="${operacao == 'Excluir'}"> readonly </c:if>>
                <option value="0" <c:if test="${genero.codGenero != null}"> selected</c:if>> </option>
                    <c:forEach items="${generos}" var="genero">
                        <option value="${genero.codGenero}" <c:if test="${filme.genero.codGenero == genero.codGenero}"> selected</c:if>>${genero.nome}</option>
                    </c:forEach>
            </select></td></tr>
               <tr><td>Mídia</td><td> <select name="codTipoDeMidia" <c:if test="${operacao == 'Excluir'}"> readonly </c:if>>
                <option value="0" <c:if test="${tipoDeMidia.codTipoDeMidia != null}"> selected</c:if>> </option>
                    <c:forEach items="${tiposdemidias}" var="tipoDeMidia">
                        <option value="${tipoDeMidia.codTipoDeMidia}" <c:if test="${filme.tipoDeMidia.codTipoDeMidia == tipoDeMidia.codTipoDeMidia}"> selected</c:if>>${tipoDeMidia.nome}</option>
                    </c:forEach>
            </select></td></tr>
              <tr><td>Fornecedor</td><td> <select name="codFornecedor" <c:if test="${operacao == 'Excluir'}"> readonly </c:if>>
                <option value="0" <c:if test="${fornecedor.codFornecedor != null}"> selected</c:if>> </option>
                    <c:forEach items="${fornecedores}" var="fornecedor">
                        <option value="${fornecedor.codFornecedor}" <c:if test="${filme.fornecedor.codFornecedor == fornecedor.codFornecedor}"> selected</c:if>>${fornecedor.razaoSocial}</option>
                    </c:forEach>
            </select></td></tr>

</table>
</div>
      <input type="submit" value="Confirmar" onclick="alerta()"  /><br>
      <input type="reset" value="Cancelar" />



    </form>



</div>


</body>

</html>

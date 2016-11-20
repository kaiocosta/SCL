<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
  <meta charset="utf-8">
    <title>Cadastro de Filmes</title>

    <style>
      select,input[type=text]{
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
        input[type=submit],[type=reset],[type=button]{
          margin-top: 1em;
          position: relative;
          border: none;
          color: #FFF;
          text-decoration: none;
          background-color: #000;
          padding: 0.9em;
          width: 48%;
          left: 26%;}

    </style>
</head>
<body>
<div class="centro">
  <h2>Cadastro de Filmes - ${operacao}</h2>
        <form action="ManterFilmeController?acao=confirmar${operacao}" method="post" name="frmManterFilme" onsubmit="return validarFormulario(this)">
            Código <br><input type="text" name="codFilme" value="${filme.codFilme}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>/><br>
            Título <br><input type="text" name="titulo" value="${filme.titulo}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
            Título original <input type="text" name="tituloOriginal" value="${filme.tituloOriginal}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
            Diretor(a)<br> <input type="text" name="nomeDiretor" value="${filme.nomeDiretor}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
            Ator Principal <input type="text" name="nomeAtorPrincipal" value="${filme.nomeAtorPrincipal}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/><br>
            Premiações<br> <input type="text" name="nomePremiacoes" value="${filme.nomePremiacoes}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/><br>
            Ano de Produção<br> <input type="text" name="anoProducao" value="${filme.anoProducao}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
            Ano de Lançamento <input type="text" name="anoLancamento" value="${filme.anoLancamento}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br><br>
            Categoria <select name="codCategoria" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>><br>
                <option value="0" <c:if test="${categoria.codCategoria != null}"> selected</c:if>> </option><br>
                    <c:forEach items="${categorias}" var="categoria">
                        <option value="${categoria.codCategoria}" <c:if test="${filme.categoria.codCategoria == categoria.codCategoria}"> selected</c:if>>${categoria.nome}</option>
                    </c:forEach>
            </select>
            Genero <select name="codGenero" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                <option value="0" <c:if test="${genero.codGenero != null}"> selected</c:if>> </option>
                    <c:forEach items="${generos}" var="genero">
                        <option value="${genero.codGenero}" <c:if test="${filme.genero.codGenero == genero.codGenero}"> selected</c:if>>${genero.nome}</option>
                    </c:forEach>
            </select>
            <br>Mídia <select name="codTipoDeMidia" <c:if test="${operacao == 'Excluir'}"> readonly </c:if>>
                <option value="0" <c:if test="${tipoDeMidia.codTipoDeMidia != null}"> selected</c:if>> </option>
                    <c:forEach items="${tiposdemidias}" var="tipoDeMidia">
                        <option value="${tipoDeMidia.codTipoDeMidia}" <c:if test="${filme.tipoDeMidia.codTipoDeMidia == tipoDeMidia.codTipoDeMidia}"> selected</c:if>>${tipoDeMidia.nome}</option>
                    </c:forEach>
            </select>

            Fornecedor <select name="codFornecedor" <c:if test="${operacao == 'Excluir'}"> readonly </c:if>>
                <option value="0" <c:if test="${fornecedor.codFornecedor != null}"> selected</c:if>> </option>
                    <c:forEach items="${fornecedores}" var="fornecedor">
                        <option value="${fornecedor.codFornecedor}" <c:if test="${filme.fornecedor.codFornecedor == fornecedor.codFornecedor}"> selected</c:if>>${fornecedor.razaoSocial}</option>
                    </c:forEach>
            </select>
    <br/>
    <br/>
    <input type="reset" value="Cancelar" /><br>
    <input type="submit" value="Confirmar" />


  </form>

</div>
</body>


</html>

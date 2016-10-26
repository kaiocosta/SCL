<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>Incluir Categoria</title>
  </head>
  <body>
    <h2>Categoria Cadastro - ${operacao}</h2>
    <form action="ManterCategoriaController?acao=confirmar${operacao}" method="post">    
        Codigo: <input type="text" name="codCategoria" value="${categorias.codCategoria}"> <br>
        Nome: <input type="text" name="nome" value="${categorias.nome}"> <br>
        Descrição <textarea name="descricao" rows="8" cols="40" value="${categorias.descricao}"></textarea> <br>
        Período de troca: <input type="text" name="periodoTrocaCategoria" value="${categorias.periodoTrocaCategoria}"> <br>
        Próxima categoria: <input type="text" name="proximaCategoria" value="${categorias.proximaCategoria}"> <br>
        <input type="button" name="" value="Cancelar">
        <input type="submit" name="" value="Concluir">
    </form>
  </body>
</html>

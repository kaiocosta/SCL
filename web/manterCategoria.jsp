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
Codigo: <input type="text" name="" value="${curso.codCategoria}"> <br>
Nome: <input type="text" name="" value="${curso.nome}"> <br>
Descrição <textarea name="" rows="8" cols="40" value="${curso.descricao}"></textarea> <br>
<input type="button" name="" value="Cancelar">
<input type="submit" name="" value="Concluir">
  </body>
</html>

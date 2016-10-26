<%-- 
    Document   : manterTipoDeMidia
    Created on : 13/10/2016, 10:14:26
    Author     : Ramon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Tipo de Midia - ${operacao}</title>
    </head>
    <body>
        <h2>Cadastrar Tipo de Midia - ${operacao}</h2>
        <form action="ManterTipoDeMidiaController?acao=confirmar${operacao}" method="post">
        Codigo: <input type="text" name="codTipoDeMidia" value="${tipoDeMidia.codTipoDeMidia}"> <br>
        Nome: <input type="text" name="nome" value="${tipoDeMidia.nome}"> <br>
        Descrição <textarea name="descricao" rows="8" cols="40" value="${tipoDeMidia.descricao}"></textarea> <br>
        <input type="button" name="" value="Cancelar">
        <input type="submit" name="" value="Concluir">
        </form>
    </body>
</html>

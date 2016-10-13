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
        Codigo: <input type="text" name="" value="${tipoDeMidia.codTipoDeMidia}"> <br>
        Nome: <input type="text" name="" value="${tipoDeMidia.nome}"> <br>
        Descrição <textarea name="" rows="8" cols="40" value="${tipoDeMidia.descricao}"></textarea> <br>
        <input type="button" name="" value="Cancelar">
        <input type="submit" name="" value="Concluir">
    </body>
</html>

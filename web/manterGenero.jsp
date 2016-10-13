<%-- 
    Document   : manterGenero
    Created on : 12/10/2016, 22:21:14
    Author     : Ramon
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Genero</title>
    </head>
    <body>
        <h2>Cadastro Genero - ${operacao}</h2>
        Codigo: <input type="text" name="" value="${genero.codGenero}"> <br>
        Nome: <input type="text" name="" value="${genero.nome}"> <br>
        Descrição <textarea name="" rows="8" cols="40" value="${genero.descricao}"></textarea> <br>
    </body>
</html>

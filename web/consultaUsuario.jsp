<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <title>Pesquisa Usuarios</title>

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
    <h1>Pesquisa Usuarios</h1>
    <table border = 1>
        <th>Cod.</th>
        <th>Nome</th>
        <th>Sexo</th>
        <th>Data de Nascimento</th>
        <th>Estado civil</th>
        <th>Cpf</th>
        <th>rg</th>
        <th>Login</th>
        <th>Senha</th>
        <th>Cep</th>
        <th>Bairro</th>
        <th>Logradouro</th>
        <th>Numero</th>
        <th>Complemento</th>
        <th>Estado</th>
        <th>Cidade</th>
        <th>Telefone 1</th>
        <th>Telefone 2</th>
        <th>Celular</th>
        <th>Email</th>

        <th colspan="2">Ação</th>
      <c:forEach items="${usuarios}" var="usuario" >
        <tr>
          <td><c:out value="${usuario.codUsuario}"></c:out></td>
          <td><c:out value="${usuario.nome}"></c:out></td>
          <td><c:out value="${usuario.sexo}"></c:out></td>
          <td><c:out value="${usuario.dataDeNasc}"></c:out></td>
          <td><c:out value="${usuario.estadoCivil}"></c:out></td>
          <td><c:out value="${usuario.cpf}"></c:out></td>
          <td><c:out value="${usuario.rg}"></c:out></td>
          <td><c:out value="${usuario.login}"></c:out></td>
          <td><c:out value="${usuario.senha}"></c:out></td>
          <td><c:out value="${usuario.cep}"></c:out></td>
          <td><c:out value="${usuario.bairro}"></c:out></td>
          <td><c:out value="${usuario.logradouro}"></c:out></td>
          <td><c:out value="${usuario.numero}"></c:out></td>
          <td><c:out value="${usuario.complemento}"></c:out></td>
          <td><c:out value="${usuario.estado}"></c:out></td>
          <td><c:out value="${usuario.cidade}"></c:out></td>
          <td><c:out value="${usuario.telefone1}"></c:out></td>
          <td><c:out value="${usuario.telefone2}"></c:out></td>
          <td><c:out value="${usuario.celular}"></c:out></td>
          <td><c:out value="${usuario.email}"></c:out></td>

          <td><a href="ManterUsuarioController?acao=prepararEditar&codUsuario=<c:out value="${usuario.codUsuario}"></c:out>">Editar</a></td>
          <td><a href="ManterUsuarioController?acao=prepararExcluir&codUsuario=<c:out value="${usuario.codUsuario}"></c:out>">Excluir</a></td>
        </tr>
      </c:forEach>
       </table></br>

      <form action="ManterUsuarioController?acao=prepararIncluir" method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
      </form>
  </body>
</html>

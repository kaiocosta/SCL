<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>Cadastrar Fornecedor</title>

    <style>
      input[type=text],[type=number]{
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
        input[type=submit],[type=button]{
          margin-top: .5em;
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
        <h2>Cadastrar Fornecedor - ${operacao}</h2>
        <form action="ManterFornecedorController?acao=confirmar${operacao}" method="post" name="frmManterFornecedor" onsubmit="return validarFormulario(this)">
        Codigo: <br><input type="number" required="" name="codFornecedor" value="${fornecedor.codFornecedor}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>/><br>
        Razão Social: <input type="text" required="" name="razaoSocial" value="${fornecedor.razaoSocial}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
        CNPJ: <input type="number" required="" name="cnpj" value="${fornecedor.cnpj}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/> <br><br>
        Nome Fantasia: <br><input type="text" required="" name="nomeFantasia" value="${fornecedor.nomeFantasia}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
        Nome do Contato: <input type="text" required="" name="nomeContato" value="${fornecedor.nomeContato}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
        CEP <input type="number" required="" name="cep" value="${fornecedor.cep}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
        Bairro <input type="text" name="bairro" value="${fornecedor.bairro}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/>
        Logradouro <input type="text" name="logradouro" value="${fornecedor.logradouro}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
        Nº <input type="number" name="numero" value="${fornecedor.numero}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
        Complemento <input type="text" name="complemento" value="${fornecedor.complemento}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/>
        Estado <input type="text" name="estado" value="${fornecedor.estado}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
        Cidade <input type="text" name="cidade" value="${fornecedor.cidade}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
        Telefone 1 <br><input type="number" required="" name="telefone1" value="${fornecedor.telefone1}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/>
        Telefone 2 <input type="text" name="telefone2" value="${fornecedor.telefone2}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>
        Celular <input type="text" name="celular" value="${fornecedor.celular}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br/><br>
        E-mail<input type="text" name="email" value="${fornecedor.email}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>/><br>

        <input type="submit" name="" value="Concluir"><br>
        <input type="button" name="" value="Cancelar">
        </form>
      </div>
</html>

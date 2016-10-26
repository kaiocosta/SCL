<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Cadastro de Filmes</title>
</head>
<body>
	<h2>Cadastro de Filmes - ${operacao}</h2>
        <form action="ManterFilmeController?acao=confirmar${operacao}" method="post" name="frmManterFilme" onsubmit="return validarFormulario(this)">
                Código <input type="text" name="codFilme" value="${filme.codFilme}"/>
		Título <input type="text" name="titulo" value="${filme.titulo}"/>
                Título original <input type="text" name="tituloOriginal" value="${filme.tituloOriginal}"/>
		Diretor(a) <input type="text" name="nomeDiretor" value="${filme.nomeDiretor}"/><br/>
		Ator Principal <input type="text" name="nomeAtorPrincipal" value="${filme.nomeAtorPrincipal}"/><br/>
		Premiações <input type="text" name="nomePremiacoes" value="${filme.nomePremiacoes}"/><br/>		
		Ano de Produção <input type="text" name="anoProducao" value="${filme.anoProducao}"/>
		Ano de Lançamento <input type="text" name="anoLancamento" value="${filme.anoLancamento}"/>
                Categoria <select name="codCategoria" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                            <option value="0" <c:if test="${categoria.codCategoria != null}"> selected</c:if>> </option>  
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
                Mídia <select name="codTipoDeMidia" <c:if test="${operacao == 'Excluir'}"> readonly </c:if>>
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
		<input type="reset" value="Cancelar" />
		<input type="submit" value="Confirmar" />


	</form>

</body>


</html>

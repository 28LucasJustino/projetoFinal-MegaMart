<%-- 
    Document   : checkout
    Created on : 13/05/2024, 10:41:41
    Author     : Marce
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <link rel="stylesheet" href="styles/checkoutFinal.css">
        <title>MegaMart- Checkout Final</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <main>
        <div class="carrinho-body">
            <h1 id="tit">Carrinho de Compras</h1>
            <div class="divisao-compras m-4">
                <div class="compras w-100">
                    <div class="d-flex flex-column gap-2 w-100">
                        <c:forEach items="${carrinho}" var="produto">
                            <div class="produtos">
                                <img src="${produto.img}" alt="${produto.nome}">
                                <div class="labels">
                                    <h2>${produto.nome}</h2>
                                    <h2>${produto.preco}</h2>
                                    <fmt:formatNumber value="${produto.valorFinal}" type="currency">
                                </div>
                                <form class="formExcluir" action="dropProd" method="post">
                                    <button type="submit" name="prod" value="${produto.idProduto}"><i class="fa-solid fa-trash fa-xl"></i></button>
                                </form>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="carrinho">
               <button class="btnPagamento">Finalizar Compra</button>
               <span class="fs-3">
                <span class="fs-3">Total: <fmt:formatNumber value="${valorTotal}" type="currency"></span>
            </span>
               <button><i class="fa-solid fa-trash fa-xl"></i>Limpar Tudo</button>
            </div>
        </div>
    </main>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
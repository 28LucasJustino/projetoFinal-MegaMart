<%-- 
    Document   : carrinho
    Created on : 27/05/2024, 08:51:14
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
        <link rel="stylesheet" href="styles/carrinho.css">
        <title>MegaMart- Carrinho</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
   
       <main>
        <div class="divisao-compras m-4">
            <div class="compras w-100">
                <div class="d-flex flex-column gap-2 w-100">
                    <c:forEach items="${carrinho}" var="produto">
                        <div class="produtos">
                            <img src="${produto.img}" alt="${produto.nome}">
                            <div class="labels">
                                <h2>${produto.nome}</h2>
                                <fmt:formatNumber value="${produto.valorFinal}" type="currency">
                            </div>
                            <form class="formExcluir" action="dropProd" method="post">
                                <button type="submit" name="prod" value="${produto.idProduto}"><iclass="fa-solid fa-trash fa-xl"></i></button>
                            </form>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="carrinho">
            <h1>Carrinho de Compras</h1>
            <span class="fs-3">
                <span class="fs-3">Total: <fmt:formatNumber value="${valorTotal}" type="currency"></span>

            </span>
           <button class="btnPagamento">Finalizar Compra</button>
        </div>
           
       </main>

       <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
</html>

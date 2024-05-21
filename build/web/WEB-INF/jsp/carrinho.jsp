<%-- 
    Document   : carrinho
    Created on : 07/05/2024, 10:56:04
    Author     : Marce
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/carrinho.css" rel="stylesheet" type="text/css" />
        <title>MegaMart- Carrinho</title>
    </head>
    <body>
        <header>
            <jsp:include page="header.jsp"></jsp:include>
        </header>
        <main>
            <br><br>
            <div class="prod"> 
                <div class="card">
                     <div class="card-body">
                      <div class="cards"> 
                      <div id="card">
                      <img id="imgP" src="${produto.img}" alt="${produto.nome}">
                      <h5 >${produto.nome}</h5>
                      <p >${produto.nomeCategoria}</p>
                      <p id="pre">Preço : ${produto.preco}</p>
                      <p>${produto.descricao}</p>
                      <a href="./Carrinho" id="btnCompra" class="btn btn-primary">Comprar</a>
                    </div>
                    </div>
                  </div>
                </div>
          </div> 
        </main>
        <br>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

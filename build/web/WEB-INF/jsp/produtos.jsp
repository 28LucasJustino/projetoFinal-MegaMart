<%-- 
    Document   : produtos
    Created on : 06/05/2024, 17:13:37
    Author     : Senai
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/produtos.css" rel="stylesheet" type="text/css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>MegaMart- Produtos</title>
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
                      <button id="btnCompra" class="btn btn-primary" carrinho="${produto.idProduto}">Comprar</button>
                    </div>
                    </div>
                  </div>
                </div>
          </div> 
          <br>
       </main>
       <br><br>
       <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="https://kit.fontawesome.com/ffe7fbbd06.js" crossorigin="anonymous"></script>
    <script src="js/carrinho.js"></script>
</html>

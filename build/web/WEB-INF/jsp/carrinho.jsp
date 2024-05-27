<%-- 
    Document   : carrinho
    Created on : 27/05/2024, 08:51:14
    Author     : Marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <link rel="stylesheet" href="styles/carrinho.css">
        <title>MegaMart- Carrinho</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
   
       <main>
        <br><br>
                <div class="card">
                     <div class="card-body">
                      <div class="cards"> 
                      <div id="card">
                      <img id="imgP" src="${produto.img}" alt="${produto.nome}">
                      <h5 >${produto.nome}</h5>
                      <p >${produto.nomeCategoria}</p>
                      <p id="pre">Preço : ${produto.preco}</p>
                      <p>${produto.descricao}</p>
                      <a href="#" class="btn btn-primary" carrinho="${produto.idProduto}">Finalizar Compra</a>
                    </div>
                    </div>
                  </div>
                </div>
          <br>
       </main>
       <br><br>
       <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

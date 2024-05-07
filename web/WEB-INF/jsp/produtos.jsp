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
        <link href="styles/index.css" rel="stylesheet" type="text/css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>MegaMart- Produtos</title>
    </head>
    <body>
       <header>
       <nav class="Header-site">
            <a href="./Home"><img src="assets/Design_sem_nome-removebg-preview.png" id="imageL" alt="" /></a> 
            <div class="cate">
                <form action="buscar-produtos" method="get">
                    <input type="text" name="busca" type="search" placeholder="Busca" aria-label="Busca" class="inB"><i class="fa-solid fa-magnifying-glass"
                        id="iconB"></i>
                    </form>
                <ul>
                    <li class="item"><a href="./Home" class="link"><i class="fa-solid fa-house"
                                id="iconC"></i>Home</a></li>
                    <li class="item"><a href="#" class="link"><i class="fa-solid fa-c"
                                id="iconC"></i>ategorias</a></li>
                    <li class="item"><a href="./Produtos" class="link"><i class="fa-solid fa-p"
                                id="iconC"></i>rodutos</a></li>
                                <li class="item"><a href="#" class="link"><i class="fa-solid fa-cart-shopping" id="iconC"> </i></a></li>
                                <li class="item"><a href="./cadastrar-produto" class="link"></i>teste</a></li>
                </ul>
            </div>
            <div class="btnCad">
                <button><a href="./Cadastro">Entrar</a></button>
            </div>  
          </nav>
       </header>

       <main>
        <br>
     <c:forEach var="produto" items="${produtos}">    
         
    <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title">${produto.nome}</h5>
          <p class="card-text">Categoria : ${produto.categoria}</p>
          <p class="card-text">Descrição : ${produto.descricao}</p>
          <p class="card-text">Preço : ${produto.preco}</p>
          <a href="./Produtos" class="btn btn-primary">Comprar</a>
        </div>
      </div>
 
      </c:forEach>       
       </main>
    </body>
    <script src="https://kit.fontawesome.com/ffe7fbbd06.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</html>

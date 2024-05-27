<%-- 
    Document   : header
    Created on : 05/05/2024, 14:25:42
    Author     : Marce
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/header.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <header>
        <nav class="Header-site">
            <a href="./Home"><img src="assets/Design_sem_nome-removebg-preview.png" id="imageL" alt=""></a> 
            <div class="cate">
                <form action="buscar-produtos" method="get">
                    <input type="text" name="busca" type="search" placeholder="Digite o que voçê procura..." class="inB"><button class="btnB" ><i class="fa-solid fa-magnifying-glass"id="iconB"></i></button>
                    </form>
            </div> 
            <div class="user">
                <ul>
                <li class="item"><a href="#" class="link"><i class="fa-solid fa-cart-shopping" id="iconC"></i></a></li>
                <li class="item"><a href="#" class="link"><i class="fa-solid fa-clock-rotate-left" id="iconC"></i></a></li> 
                <li class="item"><a href="./Login" class="link"><i class="fa-solid fa-user" id="iconC"></i></a></li>  
                </ul> 
                 </div>                   
          </nav>
          <div class="bcCate">
            <ul>
                <li class="item"><a href="#" class="lin"><i class="fa-solid fa-list-ul"></i></a></li> 
                <c:forEach items="${categorias}" var="categoria" > 
                <li class="item"><a href="./buscar-produtos?cat=${categoria.idCategoria}&busca=" class="link">${categoria.nome}</a></li>  
                </c:forEach> 
                </ul>
         </div>
        </div> 
        <div id="carrinho">
           <div id="background-carrinho"></div>
           <div id="carrinho-container">
             <div class="carrinho-header">
                 <i id="iconF" class="fa-solid fa-xmark"></i>
             </div>
             <div id="carrinho-main">
               
             </div>
             <div class="carrinho-footer">
               <button class="btn btn-finalizar">FINALIZAR COMPRA</button>
             </div>
           </div>
         </div> 
        </header>
    </body>
    <script src="js/carrinho.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
</html>
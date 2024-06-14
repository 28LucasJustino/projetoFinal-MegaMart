<%-- 
    Document   : header
    Created on : 05/05/2024, 14:25:42
    Author     : Marce
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header>
        <nav class="Header-site">
            <a href="./Home"><img src="assets/Design_sem_nome-removebg-preview.png" id="imageL" alt=""></a> 
            <div class="cate">
                <form action="buscarProdutos" method="get">
                    <input type="text" name="busca" placeholder="Digite o que voçê procura..." class="inB"><button class="btnB" ><i class="fa-solid fa-magnifying-glass"id="iconB"></i></button>
                    </form>
            </div>
            <div class="user">
                <ul>
                <li class="item"><a href="./Carrinho" class="link"><i class="fa-solid fa-cart-shopping" id="iconC"></i></a></li>
                <li class="item"><a href="./Perfil" class="link"><i class="fa-solid fa-user" id="iconC"></i></a></li> 
                </ul> 
                 </div>  
                 <div class="userM">
                    <ul>
                    <li class="item"><a href="#" class="link"><i class="fa-solid fa-list-ul" id="iconC"></i></a></li>    
                    </ul>
                </div>                  
          </nav>
          <div class="bcCate">
            <ul>
                <c:forEach items="${categorias}" var="categoria" > 
                <li class="item"><a href="./buscarProdutos?cat=${categoria.idCategoria}&busca=" class="link">${categoria.nome}</a></li>  
                </c:forEach> 
                </ul>
         </div>
        </header>
    </body>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
</html>
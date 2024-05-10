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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/header.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <nav class="Header-site">
            <a href="./Home"><img src="assets/Design_sem_nome-removebg-preview.png" id="imageL" alt="" /></a> 
            <div class="cate">
                <form action="buscar-produtos" method="get">
                    <input type="text" name="busca" type="search" placeholder="Busca" aria-label="Busca" class="inB"><button class="btnB" ><i class="fa-solid fa-magnifying-glass"id="iconB"></i></button>
                    </form>
                <ul>
                <c:forEach items="${categorias}" var="categoria" >  
                <li class="item"><a href="./buscar-produtos?cat=${categoria.idCategoria}&busca=" class="link">${categoria.nome}</a></li>  
                </c:forEach> 
                </ul>
            </div> 
            <div class="carrinho">
                <ul>
                <li class="item"><a href="#" class="link"><i class="fa-solid fa-cart-shopping" id="iconC"> </i></a></li>      
                </ul> 
                 </div>       
            <div class="btnCad">
                <button><a href="./Login">Entrar</a></button>
            </div>                
          </nav>
    </body>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
</html>
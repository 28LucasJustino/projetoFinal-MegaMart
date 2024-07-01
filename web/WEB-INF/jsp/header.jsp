<%-- 
    Document   : header
    Created on : 05/05/2024, 14:25:42
    Author     : Marce
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
        <header>
        <nav class="Header-site">
            <a href="./Home"><img src="assets/teste-removebg-preview.png" id="imageL" alt=""></a> 
            <div class="cate">
                <form action="buscarProdutos" method="get">
                    <input type="text" name="busca" class="inB"><button class="btnB" ><i class="fa-solid fa-magnifying-glass"id="iconB"></i></button>
                    </form>
            </div>
            <div class="user">
                <ul>
                <li class="item"><a href="./Carrinho" class="link"><i class="fa-solid fa-cart-shopping" id="iconC"></i></a></li>
                <li class="item"><a href="./Perfil" class="link"><i class="fa-solid fa-user" id="iconC"></i></a></li> 
                </ul> 
                 </div>              
          </nav>
          <div class="bcCate">
            <ul>
                <c:forEach items="${categorias}" var="categoria" > 
                <li class="item"><a href="./buscarCate?cat=${categoria.idCategoria}&busca=" class="link">${categoria.nome}</a></li>  
                </c:forEach> 
                </ul>
         </div>
        </header>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
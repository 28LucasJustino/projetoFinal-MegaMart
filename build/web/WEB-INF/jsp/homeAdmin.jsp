<%-- 
    Document   : homeAdmin
    Created on : 28/05/2024, 15:48:31
    Author     : Senai
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <link rel="stylesheet" href="styles/homeAdmin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>MegaMart- Home</title>
    </head>
    <body>
        <jsp:include page="headerAdmin.jsp"></jsp:include>

        <main>
            <br><br>
            <div class="prod"> 
                <c:forEach var="produto" items="${produtos}">           
                      <div class="card">    
                         <div class="card-body">
                          <div class="cards"> 
                          <div id="card">
                            <div class="buttonsEdit">
                            <a href="./Editar-produtos?solo=${produto.idProduto}" class="btnEdit"><i class="fa-solid fa-pen-to-square"></i></a>
                            <form action="dropProduto" method="post">
                            <input type="hidden" value="${produto.idProduto}">
                          <button type="submit" name="drop" value="${produto.idProduto}" class="btnEx"><i class="fa-solid fa-xmark"></i></button> 
                            </form>
                            </div>
                        <img id="imgP" src="${produto.img}" alt="${produto.nome}">
                          <h5 >${produto.nome}</h5>
                          <p >${produto.marca}</p>
                          <div class="preco">
                            <c:if test="${produto.valorTotal < produto.preco}">
                              <p class="pre-antigo">De : <fmt:formatNumber value="${produto.valorTotal}" type="currency"/></p>
                              </c:if>
                         <p class="pre">Por : <fmt:formatNumber value="${produto.preco}" type="currency"/></p>
                          </div>
                        </div>
                        </div>
                      </div>
                  </div>
                  </c:forEach> 
              </div> 
        </main>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
</html>

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
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <link rel="stylesheet" href="styles/carrinho.css">
        <title>MegaMart- Carrinho</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
   
       <main>
        <div class="carrinho">
            <h3>Carrinho de Compras</h3>
             <div class="prod">
                
                    
 
            </div>
            <div class="info">

            </div>
            <div class="btnF">
                <p>Total da Compra</p>
                
                <button>Finalizar Compra</button>
            </div>
            
        </div>
       </main>

       <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
</html>

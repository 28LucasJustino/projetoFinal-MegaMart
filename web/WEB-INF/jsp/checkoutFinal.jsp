<%-- 
    Document   : checkout
    Created on : 13/05/2024, 10:41:41
    Author     : Marce
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <link rel="stylesheet" href="styles/checkoutFinal.css">
        <title>MegaMart- Checkout Final</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
       
        <main>
            <div class="container-agradecimento">
                <center >
                    <span class="fs-1">Compra Realizada com Sucesso!<i class="fa-solid fa-circle-check" id="iconF"></i></span>
                </center>
                <img class="imgFinal" src="assets/undraw_Successful_purchase_re_mpig.png" alt="logoFim">
                <center >
                    <span class="fs-3">
                        Agradecemos imensamente por sua compra.
                        <br>
                        Convidamos você a acompanhar nossas novidades e lançamentos em nosso site.
                        <br>
                        Para visualizar seu pedido, acesse o perfil na seção "Meus Pedidos".
                        <br>
                        Atenciosamente,
                        <br>
                        MegaMart
                    </span>
                </center>
            </div>
        </main>
        
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>

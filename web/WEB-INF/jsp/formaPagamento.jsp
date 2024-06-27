<%-- 
    Document   : formaPagamento
    Created on : 13/05/2024, 10:40:57
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
        <link rel="stylesheet" href="styles/formaPagamento.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>MegaMart- Forma de Pagamento</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <main>
                <div class="MetodoPag">
                    <p class="tit">Método de Pagamento</p>
                    <br>
                        <div class="metod">
                            <button class="btnPag" id="p" type="submit" onclick="pix()"><i class="fa-brands fa-pix"></i></button>
                            <button class="btnPag" id="c" type="submit" onclick="cartao()"><i class="fa-solid fa-credit-card"></i></button>
                        </div>
                    <div class="cartao d-none" id="cartao">
                        <p><i class="fa-solid fa-credit-card" id="iconH"></i>Insira seu Cartão</p>
                            <div class="inputsPag">
                                <label for="">Numero Cartão</label>
                                <input type="text" id="numeroCartao" placeholder="0000 0000 0000 0000" required>
                                <label for="">Cod</label>
                                <input type="text" id="cod" required>
                                <label for="">Val</label>
                                <input type="text" id="valid" placeholder="MM/AA" required>
                                <label for="">Nome Completo do titular</label>
                                <input type="text" id="nomeCompleto" required>
                                <a href="./Checkout" class="btnFinalizar">Finalizar Compra<i class="fa-solid fa-shopping-cart me-1"></i></a>
                    </div>
                    <div id="chavepix" class="d-none">
                        <div id="pix">
                            <p id="net" class="tit"><i class="fa-brands fa-pix"></i>Pix para pagamento</p>             
                            <a href="./Checkout" class="btnFinalizar">Finalizar Compra<i class="fa-solid fa-shopping-cart me-1"></i></a>
                        </div>
                    </div>
                  </div>
              </div>
        </main>
        <br><br><br>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"></script>
    <script>
    $('#numero').mask('0000');
    $('#cod').mask('000');
    $('#valid').mask('00/00');
    $('#numeroCartao').mask('0000 0000 0000 0000');
    </script>
    <script src="js/pagamento.js"></script>
    <script src="js/validPag"></script>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
</html>

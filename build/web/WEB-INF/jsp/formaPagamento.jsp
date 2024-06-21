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
                    <h1 class="m-3 pt-3">Métodos de Pagamento</h1>
                    <br>
                        <div class="metod">
                            <button class="btnL" type="submit" onclick="cartao()"><i class="fa-brands fa-pix"></i></button>
                            <button class="btnL" type="submit" onclick="boleto()"><i class="fa-solid fa-barcode"></i></button>
                            <button class="btnL" type="submit" onclick="pix()"><i class="fa-solid fa-credit-card"></i></button>
                        </div>
                </div>
                    <div class="cartao d-none" id="cartao">
                            <h1>Insira seu Cartão</h1>
                        <form action="pagamentoCartao" method="post" id="Pagamento">
                            <div class="inputs">
                                <label for="">Numero Cartão</label>
                                <input type="text" id="numeroCartao" placeholder="0000 0000 0000 0000" required>
                                <label for="">CVC</label>
                                <input type="text" id="cvc" required>
                                <label for="">Val</label>
                                <input type="text" id="valid" placeholder="MM/AA" required>
                                <label for="">Nome Completo do titular</label>
                                <input type="text" id="nomeCompleto" required>
                                <button type="submit" value="cartao" name="Pagamento" class="btnFinalizar">finalizar Compra</button>
                            </div>
                        </form>
                    </div>
                    <div id="chavepix" class="d-none">
                        <div id="pix">
                            
                                <h1>Pix para pagamento</h1>
                                                
                            <form action="finalizar" method="post">
                                <button type="submit" value="pix" name="Pagamento" class="btnFinalizar">finalizar Compra</button>
                            </form>
                        </div>
                    </div>
        </main>
        <br><br><br>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/pagamento.js"></script>
    </body>
  
</html>

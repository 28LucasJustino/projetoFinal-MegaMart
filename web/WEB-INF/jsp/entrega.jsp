<%-- 
    Document   : entrega
    Created on : 13/05/2024, 10:41:57
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
        <link rel="stylesheet" href="styles/entrega.css">
        <title>MegaMart- Endereço</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

        <main>
            <br>
            <div class="cadE">
                <form action="cadEntrega" id="formEnd" method="post">
                    <p id="net" class="tit"><i class="fa-solid fa-house" id="iconH"></i>Endereço de Entrega</p>
                <div class="card">
                    <div class="inputs">
                        <label for="cep">CEP</label>
                        <input type="number" name="cep" id="cep" placeholder="Cep" maxlength="8" minlength="8" required>
                    </div> 
                    <div class="inputs">
                        <label for="rua">Rua</label>
                        <input type="text" name="rua" id="rua" placeholder="Rua" required>
                    </div>
                    <div class="inputs">
                        <label for="bairro">Bairro</label>
                        <input type="text" name="bairro" id="bairro" placeholder="Bairro" required>
                    </div>
                    <div class="inputs">
                        <label for="cidade">Cidade</label>
                        <input type="text" name="cidade" id="cidade" placeholder="Cidade" required>
                    </div>
                    <div class="inputs">
                        <label for="estado">Estado</label>
                        <input type="text" name="estado" id="estado" placeholder="Estado" minlength="2" maxlength="2" required>
                    </div>
                    <div class="inputs">
                        <label for="numero">Numero</label>
                        <input type="number" name="numero" id="numero" placeholder="Numero" required>
                    </div>
                    <button type="submit" class="btnEnd">Cadastrar Endereço</button>
                </div>
            </form>
            <p id="net" class="tit"></i>Método de Pagamento</p>
                <br>
                    <div class="metod">
                        <button class="btnPag" id="p" type="submit" onclick="pix()"><i class="fa-brands fa-pix"></i></button>
                        <button class="btnPag" id="c" type="submit" onclick="cartao()"><i class="fa-solid fa-credit-card"></i></button>
                    </div>
                <div class="cartao d-none" id="cartao">
                    
                    <p><i class="fa-solid fa-credit-card" id="iconH"></i>Insira seu Cartão</p>
                    
                    <form action="pagamentoCartao" method="post" id="Pagamento">
                        <div class="inputsPag">
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
                        <p id="net" class="tit"><i class="fa-brands fa-pix" id="iconH"></i>Pix para pagamento</p>             
                        <form action="finalizar" method="post">
                            <button type="submit" value="pix" name="Pagamento" class="btnEnd">finalizar Compra</button>
                        </form>
                    </div>
            </div>
        </div>
        </main>
        <jsp:include page="footer.jsp"></jsp:include>

        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"></script>
        <script>
        $('#numero').mask('0000');
        $('#cvc').mask('0000');
        $('#numeroCartao').mask('0000 0000 0000 0000');
        </script>
        <script src="js/endereçoAPI.js"></script>
        <script src="js/pagamento.js"></script>
    </body>
</html>

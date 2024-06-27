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
            </div>
        </main>
        <jsp:include page="footer.jsp"></jsp:include>

       
    </body> 
    <script src="js/endereçoAPI.js"></script>
</html>

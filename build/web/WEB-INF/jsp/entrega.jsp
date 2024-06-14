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
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <link rel="stylesheet" href="styles/entrega.css">
        <title>MegaMart- Entrega</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

        <main>
            <div class="cadE">
                <div class="titulo">
                    <p><i class="fa-solid fa-house" id="iconH"></i>Endereço de Entrega</p>
                </div>
                <div class="card">
                    <div class="inputs">
                        <label for="nome">Nome</label>
                        <input type="text" name="nome" placeholder="Nome" required>
                    </div>
                    <div class="inputs">
                        <label for="cep">CEP</label>
                        <input type="number" name="cep" placeholder="Cep" required>
                    </div> 
                    <div class="inputs">
                        <label for="rua">Rua</label>
                        <input type="text" name="rua" placeholder="Rua" required>
                    </div>
                    <div class="inputs">
                        <label for="complemento">Complemento</label>
                        <input type="text" name="complemento" placeholder="Complemento" required>
                    </div>
                    <div class="inputs">
                        <label for="Numero">Numero</label>
                        <input type="number" name="numero" placeholder="Numero" required>
                    </div>
                    <div class="inputs">
                        <label for="Numero">B A O R I</label>
                        <input type="text" name="baori" placeholder="B A O R I" required>
                    </div>
                    <div class="inputs">
                        <label for="cidade">Cidade</label>
                        <input type="text" name="cidade" placeholder="Cidade" required>
                    </div>
                    <div class="inputs">
                        <label for="estado">Estado</label>
                        <input type="text" name="estado" placeholder="Estado"required>
                    </div>
                </div>
                <div class="bodyFrete">
                    <div class="loby">
                        <div class="fretes">
                            <input type="radio">
                        </div>

                    </div>
                </div>

                <form action="" method="">
                    <button class="btnF" type="submit">Confirmar Entrega</button>
                    </form>
                <a href="./Carrinho"><i class="fa-solid fa-circle-left"></i>Voltar</a>
            </div>
        </main>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

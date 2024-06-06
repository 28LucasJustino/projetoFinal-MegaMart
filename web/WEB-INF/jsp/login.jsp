<%-- 
    Document   : login
    Created on : 02/05/2024, 10:01:09
    Author     : Marce
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <link href="styles/login.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MegaMart- Login</title>
    </head>
    <body>
        <header>
        <jsp:include page="header.jsp"></jsp:include>
    </header>
   <br><br>
        <div class=".loginBody">
            <form action="log" id="logar" class="login" method="post"> 
                <div class="card-login">
                    <h1>Login</h1>
                    <div class="inputsL">
                        <label id="labelL" for="email">Email</label>
                        <input id="inputL" type="email" name="email" placeholder="Email" required><i
                            class="fa-solid fa-user" id="icon"></i>
                    </div>
                    <div class="inputsL">
                        <label id="labelL" for="senha">Senha</label>
                        <input id="inputL" type="password" name="senha" placeholder="Senha" required><i
                            class="fa-solid fa-lock" id="icon"></i>
                    </div>
                    <button type="submit" class="btnLogin">Confirmar</button>
                    <div class="register">
                        <p>Não tem conta ainda ?<a id="aL" href="./Cadastro">Cadastra-se</a></p>
                        </div>
                </div>
            </form>
        </div>
        <br><br><br>
        <jsp:include page="footer.jsp"></jsp:include>
        <% if (request.getAttribute("Erro ao realizar Login") != null) { %>
            <script>
                alert("E-mail ou senha incorretos!");
            </script>
        <% } %>
    </body>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
    </html>
<%-- 
    Document   : cadastro
    Created on : 02/05/2024, 10:01:03
    Author     : Marce
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <link href="styles/cadastro.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MegaMart- Cadastro</title>
    </head>
    <body>
        <header>
            <jsp:include page="header.jsp"></jsp:include>
        </header>
        <main>
            <div class="container">
                <div class="form">
                    <form action="cad" id="formCad" method="post">
                        <div class="form-header">
                            <div class="title">
                                <h1>Cadastre-se</h1>
                            </div>
                        </div>

                        <div class="cards">
                            <div class="inputs">
                                <label for="nome"><i class="fa-solid fa-user" id="icon"></i> Nome</label>
                                <input type="text" id="nome" name="nome" placeholder="  Digite seu Nome" required>

                            </div>
                            <div class="inputs">
                                <label for="email"><i class="fa-solid fa-envelope" id="icon"></i> Email</label>
                                <input type="email" id="email" name="email" placeholder="   Digite seu Email" required>

                            </div>
                            <div class="inputs">
                                <label for="senha"><i class="fa-solid fa-unlock" id="icon"></i> Senha</label>
                                <input type="password" id="senha" name="senha" placeholder="   Digite sua senha" required>

                            </div>
                            <div class="inputs">
                                <label for="nascimento"><i class="fa-solid fa-calendar-days" id="icon"></i> Data de Nascimento</label>
                                <input type="date" name="nascimento" id="nascimento" placeholder="dd/mm/aaaa"  min="1945-01-01" max="2006-12-31" pattern="\d{4}-\d{2}-\d{2}" required>

                            </div>
                            <div class="inputs">
                                <label for="cpf"><i class="fa-solid fa-address-card" id="icon"></i> CPF</label>
                                <input  id="cpf" type="text" name="cpf"  placeholder="   Digite seu CPF" minlength="14" maxlength="14" required >

                            </div>
                            <div class="inputs">
                                <label for="telefone"><i class="fa-solid fa-phone" id="icon"></i>
                                    Telefone</label>
                                <input id="telefone" type="text" name="telefone" placeholder="   Digite seu Telefone"  minlength="14" maxlength="14" required>
                            </div>
                        </div>

                        <div class="gender-inputs">
                            <h6>Gênero</h6>
                            <div class="gender-group">
                                <div class="gender-input">
                                    <input id="female" type="radio" name="gender">
                                    <label for="female">Feminino</label><i class="fa-solid fa-venus"
                                        id="#iconG"></i>
                                </div>

                                <div class="gender-input">
                                    <input id="male" type="radio" name="gender">
                                    <label for="male">Masculino</label><i class="fa-solid fa-mars"
                                        id="#iconG"></i>
                                </div>

                                <div class="gender-input">
                                    <input id="others" type="radio" name="gender">
                                    <label for="others">Outros</label><i class="fa-solid fa-transgender"
                                        id="#iconG"></i>
                                </div>

                                <div class="gender-input">
                                    <input id="none" type="radio" name="gender">
                                    <label for="none">Prefiro não dizer</label><i
                                        class="fa-solid fa-comment-slash" id="#iconG"></i>
                                </div>
                            </div>
                        </div>

                        <div class="continue-button">
                            <button type="submit" class="btnLogin">Confirmar</button>
                             <div class="register">
                        <p>Já tem conta?<a id="aL" href="./Login">Login</a></p>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </main>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="js/vald.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"></script>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
    <script>
          $('#telefone').mask('(00) 0000-0000');
          $('#cpf').mask('000.000.000-00');
    </script>
    </html>
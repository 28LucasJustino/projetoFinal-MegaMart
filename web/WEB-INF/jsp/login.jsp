<%-- 
    Document   : login
    Created on : 02/05/2024, 10:01:09
    Author     : Marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="styles/login.css" rel="stylesheet" type="text/css" />
        <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MegaMart- Login</title>
    </head>

    <body>
        <main>
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
                    <button class="btnLogin">Confirmar</button>
                    <div class="login-button">
                        <button type="submit" id="btnL"><a id="aL" href="./Cadastro">Não tem Conta Ainda?</a></button>
                    </div>
                </div>
            </form>
        </main>
    </body>

    </html>
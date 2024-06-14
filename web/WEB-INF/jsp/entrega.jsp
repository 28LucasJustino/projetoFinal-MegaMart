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
                <div class="card">
                    <div class="inputs">
                        <input type="number" name="cpe" placeholder="Cep" required><i
                        class="fa-solid fa-user"></i>
                    </div>
                    <div class="inputs">
                        <input type="text" name="rua" placeholder="Rua" required><i
                        class="fa-solid fa-user"></i>
                    </div>
                    <div class="inputs">
                        <input type="text" name="complemento" placeholder="Complemneto" required><i
                        class="fa-solid fa-user"></i>
                    </div>
                    <div class="inputs">
                        <input type="number" name="numero" placeholder="Numero" required><i
                        class="fa-solid fa-user"></i>
                    </div>
                    <div class="inputs">
                        <input type="text" name="bairo" placeholder="Bairo" required><i
                        class="fa-solid fa-user"></i>
                    </div>
                    <div class="inputs">
                        <input type="text" name="cidade" placeholder="Cidade" required><i
                        class="fa-solid fa-user"></i>
                    </div>
                    <div class="inputs">
                        <input type="text" name="estado" placeholder="Estado" required><i
                        class="fa-solid fa-user"></i>
                    </div>
                </div>
            </div>
        </main>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

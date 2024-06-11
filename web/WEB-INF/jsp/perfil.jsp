<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/perfil.css">
    <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
    <title>MegaMart- Perfil</title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>

    <main>
        <div class="perfil">
            <div class="lateral">
                <i class="fa-solid fa-user-gear"></i>
                <i class="fa-solid fa-clock-rotate-left"></i>
                <i class="fa-solid fa-circle-left"></i>
            </div>
            <div class="perfilDados">
                
            </div>
        </div>
    </main>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
</html>
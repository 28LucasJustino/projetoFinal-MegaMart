<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/perfil.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
    <title>MegaMart- Perfil</title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>

    <main>
            <div class="container">
                <div class="perfil">
                    <div class="row">
                        <div class="col-md-4 mt-1">
                            <div class="card-body">
                                <div class="mt-3">
                                    <img src="${user.fotoPerfil}" alt="${user.nome}" class="rounded-circle" width="150">
                                    <h3>${user.nome}</h3>
                                    <i class="fa-solid fa-user-gear" id="gout">Editar Dados</i>
                                    <a href="./Pedidos" class="gout"><i class="fa-solid fa-clock-rotate-left">Meus Pedidos</i></a>
                                    <form action="logout" method="post">
                                    <button class="btnL" type="submit"><i class="fa-solid fa-circle-left"></i>Logout</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 mt-1">
                            <div class="card mb-3 content">
                                <h1 class="m-3 pt-3">Sobre o Usuario</h1>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5>Nome</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                            ${user.nome}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5>E-mail</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                            ${user.email}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5>Telefone</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                            ${user.telefone}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5>Data de Nacimento</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                            ${user.nascimento}
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </main>
    <br><br>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
</html>
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
                                    <a href="./Perfil"><img src="${user.fotoPerfil}" alt="${user.nome}" class="rounded-circle" id="imgPer" width="150"></a>
                                    <h3 id="hn">${user.nome}</h3>
                                    <button type="submit" class="btnL" onclick="edit()"><i class="fa-solid fa-user-gear">Editar Dados</i></button>
                                    <button type="submit" class="btnL" onclick="ped()"><i class="fa-solid fa-clock-rotate-left">Meus Pedidos</i></button>
                                    <form action="logout" method="post">
                                    <button class="btnL" type="submit"><i class="fa-solid fa-circle-left">Logout</i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 mt-1">
                            <div class="card mb-3 content d-flex" id="perf">
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
                                            <h5>CPF</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                            ${user.cpf}
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
                        <div class="col-md-8 mt-1">
                            <div class="card mb-3 content d-none" id="edit">
                                <h1 class="m-3 pt-3">Editar Dados do Usuario</h1>
                                <div class="card-body">
                                    <form action="editDados" method="post">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5>Nome</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                           <input type="text" class="inputs" id="nome" name="nome" placeholder=" ${user.nome}" required><button type="submit" class="btnEdit" name="atualizar"><i class="fa-solid fa-pen-to-square"></i></button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5>E-mail</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                            <input type="email" class="inputs" id="email" name="email" placeholder=" ${user.email}" required><button type="submit" class="btnEdit" name="atualizar"><i class="fa-solid fa-pen-to-square"></i></button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5>Senha</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                            <input type="password" class="inputs" id="senha" name="senha" placeholder=" *****" required><button type="submit" class="btnEdit" name="atualizar"><i class="fa-solid fa-pen-to-square"></i></button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5>CPF</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                            <input type="text" class="inputs" name="cpf" placeholder=" ${user.cpf}" id="cpf" minlength="14" maxlength="14" required><button type="submit" class="btnEdit" name="atualizar"><i class="fa-solid fa-pen-to-square"></i></button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5>Data de Nacimento</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                            <input type="date" class="inputs" id="nascimento" name="nascimento" placeholder=" ${user.nascimento}" min="1945-01-01" max="2006-12-31" pattern="\d{4}-\d{2}-\d{2}" required><button type="submit" class="btnEdit" name="atualizar"><i class="fa-solid fa-pen-to-square"></i></button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5>Telefone</h5>
                                        </div>
                                        <div class="col-md-9 text-secondary">
                                            <input type="text" class="inputs" id="telefone" name="telefone" placeholder=" ${user.telefone}" minlength="14" maxlength="14" required><button type="submit" class="btnEdit" name="atualizar"><i class="fa-solid fa-pen-to-square"></i></button>
                                        </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 mt-1">
                            <div class="card mb-3 content d-none" id="ped">
                                <h1 class="m-3 pt-3">Meus Pedidos</h1>
                                <div class="card-body">
                                    
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
<script src="js/vald.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"></script>
<script>
       $('#telefone').mask('(00) 0000-0000');
       $('#cpf').mask('000.000.000-00');
</script>
</html>
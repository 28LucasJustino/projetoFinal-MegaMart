<%-- 
    Document   : header
    Created on : 05/05/2024, 14:25:42
    Author     : Marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    </head>
    <body>
        <nav class="Header-site">
            <a href="./Home"><img src="assets/Design_sem_nome-removebg-preview.png" id="imageL" alt="" /></a> 
            <div class="cate">
                <c:forEach items="${categorias}" var="categoria" >
                <input type="text" placeholder="Busca" class="inB"><a href="./buscar-produtos?cat=${categoria.idCategoria}&busca=">${categoria.nome}</a><i class="fa-solid fa-magnifying-glass"
                    id="iconB"></i>

                </c:forEach>
                <ul>
                    <li class="item"><a href="./Home" class="link"><i class="fa-solid fa-house"
                                id="iconC"></i>Home</a></li>
                    <li class="item"><a href="#" class="link"><i class="fa-solid fa-c"
                                id="iconC"></i>ategorias</a></li>
                    <li class="item"><a href="./Produtos" class="link"><i class="fa-solid fa-p"
                                id="iconC"></i>rodutos</a></li>
                                <li class="item"><a href="#" class="link"><i class="fa-solid fa-cart-shopping" id="iconC"> </i></a></li>
                                <li class="item"><a href="./cadastrar-produto" class="link"></i>teste</a></li>
                </ul>
            </div>
            <div class="btnCad">
                <button><a href="./Cadastro">Entrar</a></button>
            </div>  
          </nav>
    </body>
    <script src="https://kit.fontawesome.com/ffe7fbbd06.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>
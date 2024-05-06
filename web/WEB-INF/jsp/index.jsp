<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
        <link href="styles/index.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MegaMart- Home</title>
    </head>

    <header>
        
    </header>
    
    <nav class="Header-site">
            <a href="./Home"><img src="assets/Design_sem_nome-removebg-preview.png" id="imageL" alt="" /></a> 
            <div class="cate">
                <input type="text" placeholder="Busca" class="inB"><i class="fa-solid fa-magnifying-glass"
                    id="iconB"></i>
                <ul>
                    <li class="item"><a href="./Home" class="link"><i class="fa-solid fa-house"id="iconC"></i>Home</a></li>
                    <li class="item"><a href="#" class="link"><i class="fa-solid fa-c"id="iconC"></i>ategorias</a></li>
                    <li class="item"><a href="./Admin" class="link"><i class="fa-solid fa-p"id="iconC"></i>rodutos</a></li>
                    <li class="item"><a href="#" class="link"><i class="fa-solid fa-cart-shopping" id="iconC"></i></a></li>
                </ul>
            </div>
            <div class="btnCad">
                <button><a href="./Cadastro">Entrar</a></button>
            </div>
            <div class="mobile-menu-icon">
                <button onclick="menuShow()"><i class="fa-solid fa-list"></i></button>
            </div>
        </nav>
        <div class="mobile-menu">
            <ul>
                <li class="nav-item"><a href="#" class="nav-link">Início</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Projetos</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Sobre</a></li>
            </ul>

            <div class="login-button">
                <button><a href="#">Entrar</a></button>
            </div>
        </div>
</html>

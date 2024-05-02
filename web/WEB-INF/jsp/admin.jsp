<%-- 
    Document   : admin
    Created on : 02/05/2024, 10:01:23
    Author     : Marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
        <link href="styles/admin.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MegaMart- Admin</title>
    </head>
    <body>
        <header>
        <nav class="Header-site">
            <img src="assets/Design_sem_nome-removebg-preview.png" id="imageL" alt=""/>
            <div class="cate">
                <input type="text" placeholder="Busca" class="inB"><i class="fa-solid fa-magnifying-glass"
                    id="iconB"></i>
                <ul>
                    <li class="item"><a href="./Home" class="link"><i class="fa-solid fa-house"
                                id="iconC"></i>Home</a></li>
                    <li class="item"><a href="#" class="link"><i class="fa-solid fa-c"
                                id="iconC"></i>ategorias</a></li>
                    <li class="item"><a href="./Admin" class="link"><i class="fa-solid fa-p"
                                id="iconC"></i>rodutos</a></li>
                                <li class="item"><a href="#" class="link"><i class="fa-solid fa-cart-shopping" id="iconC">  
                                </i></i></a></li>
                </ul>
            </div>
            <div class="btnCad">
                <button><a href="./Cadastro">Entrar</a></button>
            </div>
            <br>
        </nav>
    </header>
        <main>
          
            <div class="form">
                <form action="cad" method="post">
                        <div class="cards">
                            <div class="inputs">
                                <label for="nome"><i class="fa-brands fa-product-hunt"></i> Nome do Produto</label>
                                <input type="text" id="nome" name="nome" placeholder="  Nome do Produto" required>

                            </div>
                            <div class="inputs">
                                <label for="categoria"><i class="fa-solid fa-list"></i>Categoria do Produto</label>
                                <input type="text" id="categoria" name="categoria" placeholder="  Categoria do Produto" required>
                            </div>
                            <div class="inputs">
                                <label for="descricao"><i class="fa-solid fa-message"></i>Descrição</label>
                                <input type="text" id="descricao" name="descricao" placeholder="   Descrição do Produto" required>
                            </div>
                            <div class="inputs">
                                <label for="Preco"><i class="fa-solid fa-money-bill"></i>Preço do Produto</label>
                                <input  id="Preco" type="number" name="Preco"  placeholder="  Preço do Produto" required >
                            </div>
                            <div class="inputs">
                                <label for="estoque"><i class="fa-solid fa-box"></i>Estoque</label>
                                <input id="estoque" type="number" name="estoque"  placeholder="   Quantidade em Estoque" required>
                            </div>
                        </div>

                        <div class="continue-button">
                            <button class="btnLogin">Confirmar</button>
                        </div>
                    </form>
                </div>
        </main>
        <footer>

        </footer>
    </body>
    </html>
<%-- 
    Document   : admin
    Created on : 02/05/2024, 10:01:23
    Author     : Marce
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
                <a href="./Home"><img src="assets/Design_sem_nome-removebg-preview.png" id="imageL" alt="" /></a> 
                <div class="cate">
                    <form action="buscar-produtos" method="get">
                    <input type="text" name="busca" type="search" placeholder="Busca" aria-label="Busca" class="inB"><button><i class="fa-solid fa-magnifying-glass"
                        id="iconB"></i></button>
                    </form>
                    <ul>
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
    </header>
        <main>
            <div class="form">
                <form action="cadastrarProduto" method="post" enctype="multipart/form-data">
                        <div class="cards">
                            <div class="inputs">
                                <label for="nome"><i class="fa-brands fa-product-hunt"></i> Nome do Produto</label>
                                <input type="text" id="nome" name="nome" placeholder="  Nome do Produto" required>
                            </div>
                            <div class="inputs">
                                <label for="categoria"><i class="fa-solid fa-list"></i>Categoria do Produto</label>
                                <select  id="categoria" name="categoria">
                                    <option value="1">Celular</option>
                                    <option value="2">PC</option>
                                    <option value="3">Console</option>
                                    <option value="4">TV</option>
                                </select>
                            </div>
                            <div class="inputs">
                                <label for="descricao"><i class="fa-solid fa-message"></i>Descrição</label>
                                <textarea  id="descricao" name="descricao" rows="3"></textarea>
                            </div>
                            <div class="inputs">
                                <label for="Preco"><i class="fa-solid fa-money-bill"></i>Preço do Produto</label>
                                <input  id="preco" type="text" name="preco"  placeholder="  Preço do Produto" onkeypress="float(event)" required>
                            </div>
                            <div class="inputs">
                                <label for="estoque"><i class="fa-solid fa-box"></i>Estoque</label>
                                <input id="estoque" type="text" name="estoque"  placeholder="   Quantidade em Estoque" onkeypress="float(event)" required>
                            </div>
                            <div class="inputs">
                                <input type="file" id="image" name="img" placeholder="  Nome do Produto">
                            </div>
                        </div>

                        <div class="continue-button">
                            <button type="submit" class="btnLogin">Confirmar</button>
                        </div>
                    </form>
                </div>
        </main>
        <footer>
        </footer>
    </body>
    <script src="js/inputs.js" type="text/javascript"></script>
    </html>
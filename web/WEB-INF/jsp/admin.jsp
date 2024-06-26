<%-- 
    Document   : admin
    Created on : 02/05/2024, 10:01:23
    Author     : Marce
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="assets/png-transparent-red-m-and-crown-illustration-letter-m-alphabet-logo-m-blue-text-heart-thumbnail-removebg-preview.png" type="image/x-icon">
        <link href="styles/admin.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MegaMart- Admin</title>
    </head>
    <body>  
        <jsp:include page="headerAdmin.jsp"></jsp:include>

        <main>
            <br><br>
            <div class="form">
                <form action="cadastrarProduto" method="post" enctype="multipart/form-data">
                        <div class="cards">
                            <p id="text">Cadastro Produto</p>
                            <label for="nome" id="lab"><i class="fa-brands fa-product-hunt"></i> Nome do Produto</label>
                            <div class="inputs">
                                <input type="text" class="inpt" id="nome" name="nome" placeholder="  Nome do Produto" required>
                            </div>
                            <label for="categoria" id="lab"><i class="fa-solid fa-list"></i>Categoria do Produto</label>
                            <div class="inputs">
                                <select  id="categoria" name="categoria">
                                    <option value="1">Celular</option>
                                    <option value="2">PC</option>
                                    <option value="3">Console</option>
                                    <option value="4">TV</option>
                                    <option value="5">Games</option>
                                    <option value="6">Impresorra</option>
                                    <option value="7">Notebook</option>
                                    <option value="8">Tablet</option>
                                    <option value="9">Acessorio</option>
                                    <option value="10">Cadeira</option>
                                </select>
                            </div>
                            <label for="marca" id="lab"><i class="fa-solid fa-building"></i> Marca do Produto</label>
                            <div class="inputs">
                                <input type="text" class="inpt" id="marca" name="marca" placeholder="  Marca do Produto" required>
                            </div>
                            <br>
                            <label for="Preco" id="lab"><i class="fa-solid fa-money-bill"></i>Preço do Produto</label>
                            <div class="inputs">
                                <input  class="inpt" id="preco" type="text" name="preco"  placeholder="  Preço do Produto" required>
                            </div>
                            <br>
                            <label for="estoque" id="lab"><i class="fa-solid fa-box"></i>Estoque</label>
                            <div class="inputs">
                                <input id="estoque" class="inpt" type="text" name="estoque"  placeholder="Quantidade em Estoque" required>
                            </div>
                            <br>
                            <label for="descricao" id="lab"><i class="fa-solid fa-message"></i>Descrição</label>
                            <div class="inputs">
                                <textarea  id="descricao" name="descricao" class="tab" rows="6"></textarea>
                            </div>
                            <br>
                            <div class="inputs">
                                <input type="file" class="btnImg" id="image" name="img" placeholder="  Nome do Produto">
                            </div>
                            <button type="submit" class="btnLogin">Confirmar</button>
                        </div>
                    </form>
                </div>
        </main>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"></script>
        <script>
        $('#preco').mask('000000000000000.00', {reverse: true});
        $('#estoque').mask('000');
        </script>
        <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
    </body>
    </html>
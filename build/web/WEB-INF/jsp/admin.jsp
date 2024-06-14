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
                            <div class="inputs">
                                <label for="nome" id="lab"><i class="fa-brands fa-product-hunt"></i> Nome do Produto</label>
                                <input type="text" class="inpt" id="nome" name="nome" placeholder="  Nome do Produto" required>
                            </div>
                            <div class="inputs">
                                <label for="categoria" id="lab"><i class="fa-solid fa-list"></i>Categoria do Produto</label>
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
                            <div class="inputs">
                                <label for="marca" id="lab"><i class="fa-solid fa-building"></i> Marca do Produto</label>
                                <input type="text" class="inpt" id="marca" name="marca" placeholder="  Marca do Produto" required>
                            </div>
                            <br>
                            <div class="inputs">
                                <label for="Preco" id="lab"><i class="fa-solid fa-money-bill"></i>Preço do Produto</label>
                                <input  class="inpt" id="preco" type="text" name="preco"  placeholder="  Preço do Produto" onkeypress="float(event)" required>
                            </div>
                            <br>
                            <div class="inputs">
                                <label for="Desconto" id="lab"><i class="fa-solid fa-percent"></i>Desconto do Produto</label>
                                <input  id="desconto" class="inpt" type="text" name="desconto"  placeholder="  Desconto do Produto" onkeypress="float(event)" required>
                            </div>
                            <br>
                            <div class="inputs">
                                <label for="estoque" id="lab"><i class="fa-solid fa-box"></i>Estoque</label>
                                <input id="estoque" class="inpt" type="number" name="estoque"  placeholder="Quantidade em Estoque" required>
                            </div>
                            <br>
                            <div class="inputs">
                                <label for="descricao" id="lab"><i class="fa-solid fa-message"></i>Descrição</label>
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
    </body>
    <script src="js/inputs.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
    </html>
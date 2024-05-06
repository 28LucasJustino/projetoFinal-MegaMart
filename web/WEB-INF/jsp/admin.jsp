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
            <jsp:include page="header.jsp"></jsp:include>
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
                                    <c:forEach items="${categorias}" var="categoria" >
                                        <option value="${categoria.idCategoria}">${categoria.nome}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="inputs">
                                <label for="descricao"><i class="fa-solid fa-message"></i>Descrição</label>
                                <textarea  id="descricao" name="descricao" rows="3"></textarea>
                            </div>
                            <div class="inputs">
                                <label for="Preco"><i class="fa-solid fa-money-bill"></i>Preço do Produto</label>
                                <input  id="Preco" type="number" name="Preco"  placeholder="  Preço do Produto" required >
                            </div>
                            <div class="inputs">
                                <label for="estoque"><i class="fa-solid fa-box"></i>Estoque</label>
                                <input id="estoque" type="number" name="estoque"  placeholder="   Quantidade em Estoque" required>
                            </div>
                            <div class="inputs">
                                <input type="file" id="image" name="iamge" placeholder="  Nome do Produto">
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
    </html>
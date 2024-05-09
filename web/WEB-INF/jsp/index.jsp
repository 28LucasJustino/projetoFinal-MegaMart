<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script src="https://kit.fontawesome.com/c5d333bbd9.js" crossorigin="anonymous"></script>
        <link href="styles/index.css" rel="stylesheet" type="text/css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MegaMart- Home</title>
    </head>
<body>
    <header>
         <jsp:include page="header.jsp"></jsp:include>
    </header>
    <main>
<br>
     <c:forEach var="produto" items="${produtos}">          
      <div class="prod">               
            <div class="card" style="width: 18rem;">
                 <div class="card-body">
                  <div class="cards">
                      <img src="${produto.img}" alt="${produto.nome}">
                  <div id="card">
                  <h5 >${produto.nome}</h5>
                  <p >Categoria : ${produto.categoria}</p>
                  <p >Descrição : ${produto.descricao}</p>
                  <p >Preço : ${produto.preco}</p>
                  <a href="./Produtos?" class="btn btn-primary">Comprar</a>
                </div>
                </div>
              </div>
            </div>
      </div> 
      </c:forEach>  
    </main>
      </body>
</html>

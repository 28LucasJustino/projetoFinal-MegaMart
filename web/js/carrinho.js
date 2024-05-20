// Aguarda até que o DOM esteja completamente carregado antes de executar o código
document.addEventListener("DOMContentLoaded", function() {
    // Obtém referências para os elementos HTML relevantes
    const abrirCarrinho = document.getElementById("iconC");
    const fecharCarrinho = document.getElementById("fechar-carrinho");
    const background = document.getElementById("background-carrinho");
    const carrinho = document.getElementById("carrinho");

    // Adiciona um evento de clique para abrir o carrinho quando o botão correspondente é clicado
    abrirCarrinho.addEventListener("click", function() {
        carrinho.classList.add("aberto");
    });

    // Define uma função para fechar o carrinho
    function fechar() {
        carrinho.classList.remove("aberto");
    };

    // Adiciona eventos de clique para fechar o carrinho quando o botão de fechar ou o fundo do carrinho são clicados
    fecharCarrinho.addEventListener("click", fechar);
    background.addEventListener("click", fechar);

    // Função para carregar o conteúdo do carrinho inicialmente
    function carregarCarrinho() {
        // Cria uma nova requisição XMLHttpRequest
        const request = new XMLHttpRequest();
        // Configura a requisição GET para o recurso "carrinho"
        request.open("GET", "carrinho", true);
        // Define uma função para manipular a resposta da requisição
        request.onreadystatechange = function() {
            // Verifica se a requisição foi concluída e se o status é OK
            if (request.readyState === 4 && request.status === 200) {
                // Converte os dados recebidos em JSON
                const data = JSON.parse(request.responseText);
                // Atualiza a interface do usuário com os dados do carrinho
                console.log(data); // Exemplo: exibindo os dados no console
                // Selecionar o elemento do carrinho
                const carrinho = document.getElementById("carrinho-main");

                carrinho.innerHTML = "";

                data.forEach(produto => {
                    const divP = document.createElement("div");
                    divP.classList.add("produto");

                    const divImg = document.createElement("div");
                    divImg.classList.add("container-img");
                    divImg.innerHTML = '<img src="'+produto.imagem+'" >';

                    const divInfo = document.createElement("div");
                    divInfo.classList.add("container-info");
                    divInfo.innerHTML = '<h3>'+produto.nome+'</h3><h4 class="preco">R$ '+produto.valor.toFixed(2)+'</h4>';

                    divP.appendChild(divImg);
                    divP.appendChild(divInfo);

                    carrinho.appendChild(divP);
                });


            }
        };
        // Envia a requisição
        request.send();
    }

    // Carrega o carrinho quando a página é carregada
    carregarCarrinho();

    // Função para adicionar um item ao carrinho
    function adicionarItemAoCarrinho(idProduto) {
        // Cria uma nova requisição XMLHttpRequest
        const request = new XMLHttpRequest();
        // Configura a requisição POST para o recurso "carrinho"
        request.open("POST", "carrinho", true);
        // Define o cabeçalho da requisição
        request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        // Define uma função para manipular a resposta da requisição
        request.onreadystatechange = function() {
            // Verifica se a requisição foi concluída e se o status é OK
            if (request.readyState === 4 && request.status === 200) {
                // Após adicionar o item, recarrega o carrinho
                carregarCarrinho();
            }
        };
        // Envia a requisição, passando o ID do produto como parâmetro
        request.send("id=" + idProduto);
    }

    // Adiciona eventos de clique aos botões de compra para adicionar itens ao carrinho
    const btns = document.getElementsByClassName("btn-comprar");
    for(let i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function() {
            // Obtém o ID do produto a partir do atributo data-idproduto
            const idProduto = this.getAttribute("data-idproduto");
            // Chama a função para adicionar o item ao carrinho
            adicionarItemAoCarrinho(idProduto);
        });
    }
});

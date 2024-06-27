const cartaoPag = document.getElementById("cartao");

form.addEventListener("submit", function (event) {
    const numeroCartao = document.getElementById("numeroCartao").value.trim();
    const cod = document.getElementById("cod").value.trim();
    const valid = document.getElementById("valid").value.trim();
    const cep = document.getElementById("cep").value.trim();
    const nomeCompleto = document.getElementById("nomeCompleto").value.trim();

    if (numeroCartao === "" ||cod === "" || valid === "" || cep === "" || nomeCompleto === "") {
        event.preventDefault();
        alert("E-mail ou senha incorretos!");
    } else {
        alert("Cadastro Realizado com Sucesso!")
    }
});
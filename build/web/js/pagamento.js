function pix() {
    $('#chavepix').removeClass('d-none').addClass('d-flex');
    $('#cartao').removeClass('d-flex').addClass('d-none');
}
function cartao() {
    $('#cartao').removeClass('d-none').addClass('d-flex');
    $('#chavepix').removeClass('d-flex').addClass('d-none');

}

const formCadastroEnd = document.getElementById("formEnd");

form.addEventListener("submit", function (event) {
    const rua = document.getElementById("rua").value.trim();
    const numero = document.getElementById("numero").value.trim();
    const bairro = document.getElementById("bairro").value.trim();
    const cep = document.getElementById("cep").value.trim();
    const cidade = document.getElementById("cidade").value.trim();
    const estado = document.getElementById("estado").value.trim();

    if (rua === "" ||numero === "" || bairro === "" || cep === "" || cidade === "" || estado === "") {
        event.preventDefault();
        alert("E-mail ou senha incorretos!");
    } else {
        alert("Cadastro Realizado com Sucesso!")
    }
});

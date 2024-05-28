package model.bean;

public class CarrinhoDTO {
 private int idCarrinho;
 private int carrinhoUser;
 private int produto;
 private int quantidade;
 private float valorTotal;

    public CarrinhoDTO() {
    }

    public CarrinhoDTO(int idCarrinho, int carrinhoUser, int produto, int quantidade, float valorTotal) {
        this.idCarrinho = idCarrinho;
        this.carrinhoUser = carrinhoUser;
        this.produto = produto;
        this.quantidade = quantidade;
        this.valorTotal = valorTotal;
    }

    public int getIdCarrinho() {
        return idCarrinho;
    }

    public void setIdCarrinho(int idCarrinho) {
        this.idCarrinho = idCarrinho;
    }

    public int getCarrinhoUser() {
        return carrinhoUser;
    }

    public void setCarrinhoUser(int carrinhoUser) {
        this.carrinhoUser = carrinhoUser;
    }

    public int getProduto() {
        return produto;
    }

    public void setProduto(int produto) {
        this.produto = produto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public float getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(float valorTotal) {
        this.valorTotal = valorTotal;
    }
}
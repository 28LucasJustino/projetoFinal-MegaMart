package model.bean;

public class CarrinhoProdutoDTO {
    private int idCarrinhoProduto;
    private int carrinho;
    private int produto;

    public CarrinhoProdutoDTO() {
    }

    public CarrinhoProdutoDTO(int idCarrinhoProduto, int carrinho, int produto) {
        this.idCarrinhoProduto = idCarrinhoProduto;
        this.carrinho = carrinho;
        this.produto = produto;
    }

    public int getIdCarrinhoProduto() {
        return idCarrinhoProduto;
    }

    public void setIdCarrinhoProduto(int idCarrinhoProduto) {
        this.idCarrinhoProduto = idCarrinhoProduto;
    }

    public int getCarrinho() {
        return carrinho;
    }

    public void setCarrinho(int carrinho) {
        this.carrinho = carrinho;
    }

    public int getProduto() {
        return produto;
    }

    public void setProduto(int produto) {
        this.produto = produto;
    } 
}
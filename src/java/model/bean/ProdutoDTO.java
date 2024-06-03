package model.bean;

public class ProdutoDTO {
    private int idProduto;
    private String nome;
    private int categoria;
    private String marca;
    private String descricao;
    private float preco;
    private int estoque;
    private float valorFinal;
    private float desconto;
    private String img;

    public ProdutoDTO() {
    }

    public ProdutoDTO(int idProduto, String nome, int categoria, String marca, String descricao, float preco, int estoque, float valorFinal, float desconto, String img) {
        this.idProduto = idProduto;
        this.nome = nome;
        this.categoria = categoria;
        this.marca = marca;
        this.descricao = descricao;
        this.preco = preco;
        this.estoque = estoque;
        this.valorFinal = valorFinal;
        this.desconto = desconto;
        this.img = img;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }

    public float getValorFinal() {
        return valorFinal;
    }

    public void setValorFinal(float valorFinal) {
        this.valorFinal = valorFinal;
    }

    public float getDesconto() {
        return desconto;
    }

    public void setDesconto(float desconto) {
        this.desconto = desconto;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
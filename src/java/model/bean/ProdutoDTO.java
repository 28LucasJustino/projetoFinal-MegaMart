package model.bean;

public class ProdutoDTO {
    private static int idProduto;
    private String nome;
    private String categoria;
    private String descricao;
    private float preco;
    private int estoque;

    public ProdutoDTO() {
    }

    public ProdutoDTO(String nome, String categoria, String descricao, float preco, int estoque) {
        this.nome = nome;
        this.categoria = categoria;
        this.descricao = descricao;
        this.preco = preco;
        this.estoque = estoque;
    }

    public static int getIdProduto() {
        return idProduto;
    }

    public static void setIdProduto(int idProduto) {
        ProdutoDTO.idProduto = idProduto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
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
    
}
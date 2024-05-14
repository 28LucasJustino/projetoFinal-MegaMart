package model.bean;

public class ProdutoDTO {
    private int idProduto;
    private String nome;
    private int categoria;
    private String nomeCategoria;
    private String descricao;
    private float preco;
    private int estoque;
    private String img;
    
    public ProdutoDTO() {
    }

    public ProdutoDTO(int idProduto, String nome, int categoria, String nomeCategoria, String descricao, float preco, int estoque, String img) {
        this.idProduto = idProduto;
        this.nome = nome;
        this.categoria = categoria;
        this.nomeCategoria = nomeCategoria;
        this.descricao = descricao;
        this.preco = preco;
        this.estoque = estoque;
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

    public String getNomeCategoria() {
        return nomeCategoria;
    }

    public void setNomeCategoria(String nomeCategoria) {
        this.nomeCategoria = nomeCategoria;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
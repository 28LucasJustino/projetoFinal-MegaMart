package model.bean;

public class ProdutoDTO {
    private static int idProduto;
    private String nome;
    private int fkIdCategoria;
    private String descricao;
    private float preco;
    private int estoque;
    private byte[] img;
    public ProdutoDTO() {
    }

    public ProdutoDTO(String nome, int fkIdCategoria, String descricao, float preco, int estoque, byte[] img) {
        this.nome = nome;
        this.fkIdCategoria = fkIdCategoria;
        this.descricao = descricao;
        this.preco = preco;
        this.estoque = estoque;
        this.img = img;
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

    public int getFkIdCategoria() {
        return fkIdCategoria;
    }

    public void setFkIdCategoria(int fkIdCategoria) {
        this.fkIdCategoria = fkIdCategoria;
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

    public byte[] getImg() {
        return img;
    }

    public void setImg(byte[] img) {
        this.img = img;
    }

   
}
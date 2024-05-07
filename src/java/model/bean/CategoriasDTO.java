package model.bean;


public class CategoriasDTO {
    private int idCategoria;
    private String nome;

    public CategoriasDTO() {
    }

    public CategoriasDTO(String nome) {
        this.nome = nome;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
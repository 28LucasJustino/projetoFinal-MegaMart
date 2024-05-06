package model.bean;


public class CategoriasDTO {
    private static int idCategoria;
    private String nome;

    public CategoriasDTO() {
    }

    public CategoriasDTO(String nome) {
        this.nome = nome;
    }

    public static int getIdCategoria() {
        return idCategoria;
    }

    public static void setIdCategoria(int idCategoria) {
        CategoriasDTO.idCategoria = idCategoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }  
}
package model.bean;

public class CarrinhoDTO {
  private int idCarrinho;
  private int usuario;

    public CarrinhoDTO() {
    }

    public CarrinhoDTO(int idCarrinho, int usuario) {
        this.idCarrinho = idCarrinho;
        this.usuario = usuario;
    }

    public int getIdCarrinho() {
        return idCarrinho;
    }

    public void setIdCarrinho(int idCarrinho) {
        this.idCarrinho = idCarrinho;
    }

    public int getUsuario() {
        return usuario;
    }

    public void setUsuario(int usuario) {
        this.usuario = usuario;
    } 
}
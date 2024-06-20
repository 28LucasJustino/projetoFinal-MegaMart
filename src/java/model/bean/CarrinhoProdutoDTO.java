package model.bean;

public class CarrinhoUserDTO {
   private int idCarrinhoUser;
   private int usuario;

    public CarrinhoUserDTO() {
    }

    public CarrinhoUserDTO(int idCarrinhoUser, int usuario) {
        this.idCarrinhoUser = idCarrinhoUser;
        this.usuario = usuario;
    }

    public int getIdCarrinhoUser() {
        return idCarrinhoUser;
    }

    public void setIdCarrinhoUser(int idCarrinhoUser) {
        this.idCarrinhoUser = idCarrinhoUser;
    }

    public int getUsuario() {
        return usuario;
    }

    public void setUsuario(int usuario) {
        this.usuario = usuario;
    }
}
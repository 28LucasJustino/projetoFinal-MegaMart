package model.bean;

public class EnderecoDTO {
    private int idEndereco;
    private int usuario_end;
    private String rua;
    private int numero;
    private String bairro;
    private String cidade;
    private String estado;
    private int cep;

    public EnderecoDTO() {
    }

    public EnderecoDTO(int idEndereco, int usuario_end, String rua, int numero, String bairro, String cidade, String estado, int cep) {
        this.idEndereco = idEndereco;
        this.usuario_end = usuario_end;
        this.rua = rua;
        this.numero = numero;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
        this.cep = cep;
    }

    public int getIdEndereco() {
        return idEndereco;
    }

    public void setIdEndereco(int idEndereco) {
        this.idEndereco = idEndereco;
    }

    public int getUsuario_end() {
        return usuario_end;
    }

    public void setUsuario_end(int usuario_end) {
        this.usuario_end = usuario_end;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
    }
}
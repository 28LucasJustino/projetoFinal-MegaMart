package model.bean;

import java.sql.Date;

public class UsuarioDTO {
   private static int idUsuario;
   private String nome;
   private String senha;
   private String email;
   private String cpf;
   private String telefone;
   private Date nascimento;

    public UsuarioDTO() {
    }

    public UsuarioDTO(String nome, String senha, String email, String cpf, String telefone, Date nascimento) {
        this.nome = nome;
        this.senha = senha;
        this.email = email;
        this.cpf = cpf;
        this.telefone = telefone;
        this.nascimento = nascimento;
    }

    public static int getIdUsuario() {
        return idUsuario;
    }

    public static void setIdUsuario(int idUsuario) {
        UsuarioDTO.idUsuario = idUsuario;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public Date getNascimento() {
        return nascimento;
    }

    public void setNascimento(Date nascimento) {
        this.nascimento = nascimento;
    }
}
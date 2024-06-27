package model.DAO;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.UsuarioDTO;

public class UsuarioDAO {    
     public void create(UsuarioDTO createLogin) {

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO usuario (nome,senha,email,cpf,telefone,nascimento) VALUES (?,?,?,?,?,?)");
            stmt.setString(1, createLogin.getNome());
            stmt.setString(2, createLogin.getSenha());
            stmt.setString(3, createLogin.getEmail());
            stmt.setString(4, createLogin.getCpf());
            stmt.setString(5, createLogin.getTelefone());
            stmt.setDate(6, createLogin.getNascimento());
            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    public int buscarLogin(UsuarioDTO user) {
        int idUsuario = -1;
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            String query = "SELECT * FROM usuario WHERE email = ? AND senha = ?";
            stmt = conexao.prepareStatement(query);
            
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getSenha());
            
            rs = stmt.executeQuery();
            if(rs.next()){
                idUsuario = rs.getInt("idUsuario");
                user.setStats(rs.getInt("stats"));
            }
            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
      return idUsuario;
    } 
    public UsuarioDTO selecionarUsuarioPorId(int id) {
        UsuarioDTO u = new UsuarioDTO();
        if (id == -1) {
            return u;
        }
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM usuario WHERE idUsuario = ?");
            stmt.setInt(1, id);

            rs = stmt.executeQuery();

            if (rs.next()) {
                u.setIdUsuario(rs.getInt("idUsuario"));
                u.setNome(rs.getString("nome"));
                u.setEmail(rs.getString("email"));
                u.setTelefone(rs.getString("telefone"));
                u.setCpf(rs.getString("cpf"));
                u.setNascimento(rs.getDate("nascimento"));
                u.setStats(rs.getInt("stats"));
                u.setFotoPerfil(rs.getString("fotoPerfil"));

            } else {
                System.out.println("Usuario não localizado.");
                u = null;
            }

            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return u;
    }
    public void edit(UsuarioDTO editUser){
        try {
          Connection conexao = Conexao.conectar();
          PreparedStatement stmt = null;
          stmt = conexao.prepareStatement("UPDATE usuario SET nome =?,senha =?,email =?,cpf =?,telefone = ?,nascimento = ?,stats = ? WHERE idUsuario = ?");
          stmt.setString(1, editUser.getNome());
          stmt.setString(2, editUser.getSenha());
          stmt.setString(3, editUser.getEmail());
          stmt.setString(4, editUser.getCpf());
          stmt.setString(5, editUser.getTelefone());
          stmt.setDate(6, editUser.getNascimento());
          stmt.setInt(7, editUser.getStats());
          stmt.setInt(8, editUser.getIdUsuario());
          
          stmt.executeUpdate();
          
          stmt.close();
          conexao.close();
           
       } catch (SQLException e){
            e.printStackTrace();
    }
    }
}
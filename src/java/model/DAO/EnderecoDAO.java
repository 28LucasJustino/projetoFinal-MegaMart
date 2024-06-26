package model.DAO;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.bean.EnderecoDTO;

public class EnderecoDAO {
      public void create(EnderecoDTO createEnder) {

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO endereco (rua,numero,bairro,cidade,estado,cep) VALUES (?,?,?,?,?,?)");
            stmt.setString(1, createEnder.getRua());
            stmt.setInt(2, createEnder.getNumero());
            stmt.setString(3, createEnder.getBairro());
            stmt.setString(4, createEnder.getCidade());
            stmt.setString(5, createEnder.getEstado());
            stmt.setInt(6, createEnder.getCep());
            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    } 
}
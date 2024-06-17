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

            stmt = conexao.prepareStatement("INSERT INTO endereco (nome,rua,numero,complemento,bairro,cidade,estado,cep) VALUES (?,?,?,?,?,?,?,?)");
            stmt.setString(1, createEnder.getNome());
            stmt.setString(2, createEnder.getRua());
            stmt.setInt(3, createEnder.getNumero());
            stmt.setString(4, createEnder.getComplemento());
            stmt.setString(5, createEnder.getBairro());
            stmt.setString(6, createEnder.getCidade());
            stmt.setString(7, createEnder.getEstado());
            stmt.setInt(8, createEnder.getCep());
            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    } 
      public void edit(EnderecoDTO createEnder) {

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("UPADTE endereco SET nome = ?,rua = ?,numero = ?,complemento = ?,bairro = ?,cidade =?,estado = ?,cep = ?  VALUES (?,?,?,?,?,?,?,?)");
            stmt.setString(1, createEnder.getNome());
            stmt.setString(2, createEnder.getRua());
            stmt.setInt(3, createEnder.getNumero());
            stmt.setString(4, createEnder.getComplemento());
            stmt.setString(5, createEnder.getBairro());
            stmt.setString(6, createEnder.getCidade());
            stmt.setString(7, createEnder.getEstado());
            stmt.setInt(8, createEnder.getCep());
            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }  
      public void drop(EnderecoDTO dropEnd){
       try {
          Connection conexao = Conexao.conectar();
          PreparedStatement stmt = null;
          
          stmt = conexao.prepareStatement("DELETE FROM endereco WHERE idEndereco = ?");
          stmt.setInt(1,dropEnd.getIdEndereco());
          
          
          stmt.executeUpdate();
          
          stmt.close();
          conexao.close();
 
       } catch (SQLException e){
            e.printStackTrace();
    }
    }  
}
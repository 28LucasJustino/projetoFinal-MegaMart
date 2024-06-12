package model.DAO;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.CategoriasDTO;


public class CategoriasDAO {
  public List<CategoriasDTO> listarCategorias() {
        List<CategoriasDTO> categorias = new ArrayList();
        
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("SELECT * FROM categoria");
            rs = stmt.executeQuery();
            
            while(rs.next()) {
                CategoriasDTO categoriaAtual = new CategoriasDTO();
                categoriaAtual.setIdCategoria(rs.getInt("idCategoria"));
                categoriaAtual.setNome(rs.getString("nome"));
                
                categorias.add(categoriaAtual);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }
        
        return categorias;
    }
}
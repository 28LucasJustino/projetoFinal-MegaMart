/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.ProdutoDTO;


/**
 *
 * @author Marce
 */
public class ProdutoDAO {
   public List<ProdutoDTO> read() {
        List<ProdutoDTO> prod = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM usuario");
            rs = stmt.executeQuery();

            while (rs.next()) {
                ProdutoDTO produto = new ProdutoDTO();
                produto.setIdProduto(rs.getInt("idProduto"));
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getString("categoria"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setEstoque(rs.getInt("estoque"));
                produto.setImg(rs.getBytes("img"));
                prod.add(produto);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return prod;
    }

     public void create(ProdutoDTO createProduto) {

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO produto (nome,categoria,descricao,preco,estoque,img) VALUES (?,?,?,?,?,?)");
            stmt.setString(1, createProduto.getNome());
            stmt.setString(2, createProduto.getCategoria());
            stmt.setString(3, createProduto.getDescricao());
            stmt.setFloat(4, createProduto.getPreco());
            stmt.setInt(5, createProduto.getEstoque());
            stmt.setBytes(6, createProduto.getImg());
            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    } 
}

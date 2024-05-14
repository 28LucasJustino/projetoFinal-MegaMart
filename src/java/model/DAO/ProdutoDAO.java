package model.DAO;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.ProdutoDTO;

public class ProdutoDAO {
   public List<ProdutoDTO> read() {
        List<ProdutoDTO> prod = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM produto");
            rs = stmt.executeQuery();

            while (rs.next()) {
                ProdutoDTO produto = new ProdutoDTO();
                produto.setIdProduto(rs.getInt("idProduto"));
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getInt("categoria"));
                produto.setNomeCategoria(rs.getString("nomeCategoria"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setEstoque(rs.getInt("estoque"));
                produto.setImg(rs.getString("img"));
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

            stmt = conexao.prepareStatement("INSERT INTO produto (categoria,nomeCategoria,nome,descricao,preco,estoque,img) VALUES (?,?,?,?,?,?,?)");
            stmt.setInt(1, createProduto.getCategoria());
            stmt.setString(2, createProduto.getNomeCategoria());
            stmt.setString(3, createProduto.getNome());
            stmt.setString(4, createProduto.getDescricao());
            stmt.setFloat(5, createProduto.getPreco());
            stmt.setInt(6, createProduto.getEstoque());
            stmt.setString(7, createProduto.getImg());
            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    } 
     public List<ProdutoDTO> buscarProduto(String Busca) {
       List<ProdutoDTO> resultadoBusca = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM produto WHERE nome LIKE ? OR nomeCategoria LIKE ?");
     
            stmt.setString(1, Busca);
            stmt.setString(2, Busca);
            
            rs = stmt.executeQuery(); 
            while (rs.next()) {
                ProdutoDTO produto = new ProdutoDTO();
                produto.setIdProduto(rs.getInt("idProduto"));
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getInt("categoria"));
                produto.setNomeCategoria(rs.getString("nomeCategoria"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setEstoque(rs.getInt("estoque"));
                produto.setImg(rs.getString("img"));
                resultadoBusca.add(produto);
            
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultadoBusca;
    }
     
     public List<ProdutoDTO> buscarCategoria(int categoria) {
       List<ProdutoDTO> resultadoBusca = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM produto WHERE categoria = ?");
            stmt.setInt(1, categoria);
            
            rs = stmt.executeQuery();
     
            while (rs.next()) {
                ProdutoDTO produto = new ProdutoDTO();
                produto.setIdProduto(rs.getInt("idProduto"));
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getInt("categoria"));
                produto.setNomeCategoria(rs.getString("nomeCategoria"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setEstoque(rs.getInt("estoque"));
                produto.setImg(rs.getString("img"));
                resultadoBusca.add(produto);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return resultadoBusca;
    }
      public List<ProdutoDTO> listarProdutos() {
        List<ProdutoDTO> produtos = new ArrayList<>();
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("SELECT * FROM produto LIMIT 10");
            rs = stmt.executeQuery();

            while (rs.next()) {
                ProdutoDTO prod = new ProdutoDTO();
                prod.setIdProduto(rs.getInt("idProduto"));
                prod.setNome(rs.getString("nome"));
                prod.setCategoria(rs.getInt("categoria"));
                prod.setNomeCategoria(rs.getString("nomeCategoria"));
                prod.setDescricao(rs.getString("descricao"));
                prod.setPreco(rs.getFloat("preco"));
                prod.setEstoque(rs.getInt("estoque"));
                prod.setImg(rs.getString("img"));
                produtos.add(prod);
            }           
            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produtos;
    }
      public ProdutoDTO produtoSolo(int focado){
        ProdutoDTO prod = new ProdutoDTO();
       
        try{
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
           
            stmt = conexao.prepareStatement("SELECT * FROM produto WHERE idProduto = ?");
            stmt.setInt(1, focado);
           
            rs = stmt.executeQuery();
           
            if(rs.next()) {
                prod.setIdProduto(rs.getInt("idProduto"));
                prod.setNome(rs.getString("nome"));
                prod.setCategoria(rs.getInt("Categoria"));
                prod.setDescricao(rs.getString("descricao"));
                prod.setPreco(rs.getFloat("preco"));
                prod.setEstoque(rs.getInt("estoque"));
                prod.setImg(rs.getString("img"));

       
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return prod;
    }
}
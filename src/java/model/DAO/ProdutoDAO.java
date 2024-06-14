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
     public void create(ProdutoDTO createProduto) {

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO produto (categoria,marca,nome,descricao,desconto,preco,estoque,img) VALUES (?,?,?,?,?,?,?,?)");
            stmt.setInt(1, createProduto.getCategoria());
            stmt.setString(2, createProduto.getMarca());
            stmt.setString(3, createProduto.getNome());
            stmt.setString(4, createProduto.getDescricao());
            stmt.setFloat(5, createProduto.getDesconto());
            stmt.setFloat(6, createProduto.getPreco());
            stmt.setInt(7, createProduto.getEstoque());
            stmt.setString(8, createProduto.getImg());
            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    } 
     public List<ProdutoDTO> buscarProd(String Busca) {
       List<ProdutoDTO> resultBuscaP = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM produto WHERE nome LIKE ? OR marca LIKE ?");
     
            stmt.setString(1, Busca);
            stmt.setString(2, Busca);
            
            rs = stmt.executeQuery(); 
            while (rs.next()) {
                ProdutoDTO prod = new ProdutoDTO();
                prod.setIdProduto(rs.getInt("idProduto"));
                prod.setNome(rs.getString("nome"));
                prod.setCategoria(rs.getInt("categoria"));
                prod.setMarca(rs.getString("marca"));
                prod.setDescricao(rs.getString("descricao"));
                prod.setPreco(rs.getFloat("preco"));
                prod.setEstoque(rs.getInt("estoque"));
                prod.setImg(rs.getString("img"));
                resultBuscaP.add(prod);
            
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultBuscaP;
    }
     
     public List<ProdutoDTO> buscarCate(int categoria) {
       List<ProdutoDTO> resultBuscaC = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM produto WHERE categoria = ?");
            stmt.setInt(1, categoria);
            
            rs = stmt.executeQuery();
     
            while (rs.next()) {
                ProdutoDTO prodC = new ProdutoDTO();
                prodC.setIdProduto(rs.getInt("idProduto"));
                prodC.setCategoria(rs.getInt("categoria"));
                prodC.setNome(rs.getString("nome"));
                prodC.setMarca(rs.getString("marca"));
                prodC.setDescricao(rs.getString("descricao"));
                prodC.setPreco(rs.getFloat("preco"));
                prodC.setEstoque(rs.getInt("estoque"));
                prodC.setImg(rs.getString("img"));
                resultBuscaC.add(prodC);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return resultBuscaC;
    }
      public List<ProdutoDTO> listarProdutos() {
        List<ProdutoDTO> produtos = new ArrayList<>();
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("SELECT * FROM produto LIMIT 20");
            rs = stmt.executeQuery();

            while (rs.next()) {
                ProdutoDTO prod = new ProdutoDTO();
                prod.setIdProduto(rs.getInt("idProduto"));
                prod.setNome(rs.getString("nome"));
                prod.setCategoria(rs.getInt("categoria"));
                prod.setMarca(rs.getString("marca"));
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
      public List<ProdutoDTO> listarTudo() {
        List<ProdutoDTO> produtos = new ArrayList<>();
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("SELECT * FROM produto");
            rs = stmt.executeQuery();

            while (rs.next()) {
                ProdutoDTO prod = new ProdutoDTO();
                prod.setIdProduto(rs.getInt("idProduto"));
                prod.setNome(rs.getString("nome"));
                prod.setCategoria(rs.getInt("categoria"));
                prod.setMarca(rs.getString("marca"));
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
      public ProdutoDTO produtoSolo(int solo){
        ProdutoDTO prod = new ProdutoDTO();
       
        try{
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
           
            stmt = conexao.prepareStatement("SELECT * FROM produto WHERE idProduto = ?");
            stmt.setInt(1, solo);
           
            rs = stmt.executeQuery();
           
            if(rs.next()) {
                prod.setIdProduto(rs.getInt("idProduto"));
                prod.setNome(rs.getString("nome"));
                prod.setCategoria(rs.getInt("Categoria"));
                prod.setMarca(rs.getString("marca"));
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
      public void drop(ProdutoDTO dropProd){
       try {
          Connection conexao = Conexao.conectar();
          PreparedStatement stmt = null;
          
          stmt = conexao.prepareStatement("DELETE FROM produto WHERE idProduto = ?");
          stmt.setInt(1,dropProd.getIdProduto());
          
          
          stmt.executeUpdate();
          
          stmt.close();
          conexao.close();
 
       } catch (SQLException e){
            e.printStackTrace();
    }
    }  
 public void edit(ProdutoDTO editProduto){
        try {
          Connection conexao = Conexao.conectar();
          PreparedStatement stmt = null;
          stmt = conexao.prepareStatement("UPDATE produto SET categoria =?,marca =?,nome =?,descricao =?,preco = ?,estoque = ?,img = ?   WHERE idProduto = ?");
          stmt.setInt(1, editProduto.getCategoria());
          stmt.setString(2, editProduto.getMarca());
          stmt.setString(3, editProduto.getNome());
          stmt.setString(4, editProduto.getDescricao());
          stmt.setFloat(5, editProduto.getPreco());
          stmt.setInt(6, editProduto.getEstoque());
          stmt.setString(7, editProduto.getImg());
          stmt.setInt(8, editProduto.getIdProduto());
          
          stmt.executeUpdate();
          
          stmt.close();
          conexao.close();
           
       } catch (SQLException e){
            e.printStackTrace();
    }
    }
 
}
package model.DAO;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.CarrinhoDTO;
import model.bean.CarrinhoUserDTO;
import model.bean.ProdutoDTO;
import model.bean.UsuarioDTO;


public class CarrinhoDAO {
    public void addProduto(ProdutoDTO produto, CarrinhoUserDTO carrinho) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO carrinho ( carrinhoUser, produto) VALUES (?, ?)");
            stmt.setInt(1, carrinho.getIdCarrinhoUser());
            stmt.setInt(2, produto.getIdProduto());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void removerProduto(ProdutoDTO dropProd, CarrinhoUserDTO dropCarr) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("DELETE FROM carrinho WHERE carrinhoUser = ? AND produto = ?");
            stmt.setInt(1, dropCarr.getIdCarrinhoUser());
            stmt.setInt(2, dropProd.getIdProduto());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public CarrinhoUserDTO getCarrinho(UsuarioDTO user) {
        CarrinhoUserDTO c = new CarrinhoUserDTO();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM carrinho WHERE usuario = ?");
            stmt.setInt(1, user.getIdUsuario());

            rs = stmt.executeQuery();
            if (rs.next()) {
                c.setIdCarrinhoUser(rs.getInt("idCarrinhoUser"));
                c.setUsuario(rs.getInt("usuario"));
            }

            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return c;
    }
       public List<ProdutoDTO> listarProdutos(UsuarioDTO user) {
        List<ProdutoDTO> produtos = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT p.* FROM carrinhoProduto AS cp JOIN produto AS p ON cp.produto = p.idProduto"
                    + " JOIN carrinho AS c ON cp.carrinho = c.idCarrinho JOIN usuario AS u ON c.usuario = u.idUsuario WHERE u.idUsuario = ?");
            stmt.setInt(1, user.getIdUsuario());

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
}
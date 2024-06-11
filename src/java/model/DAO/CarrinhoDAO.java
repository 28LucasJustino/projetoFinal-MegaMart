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
       public List<ProdutoDTO> carrinhoProduto(UsuarioDTO user) {
        List<ProdutoDTO> produtos = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT p.* FROM carrinho AS c JOIN produto AS p ON c.produto = p.idProduto"
                    + " JOIN carrinhoUser AS cu ON cup.carrinho = cu.idCarrinhoUser JOIN usuario AS u ON cu.usuario = u.idUsuario WHERE u.idUsuario = ?");
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
       public CarrinhoUserDTO selecionarCarrinho(UsuarioDTO u) {
        CarrinhoUserDTO c = new CarrinhoUserDTO();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM carrinho WHERE usuario = ?");
            stmt.setInt(1, u.getIdUsuario());

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
       public void esvaziarCarrinho(UsuarioDTO u) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("DELETE FROM carrinhoProduto WHERE carrinho = ?");
            stmt.setInt(1, u.getIdUsuario());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
public void adicionarProduto(ProdutoDTO p, CarrinhoUserDTO c) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO carrinhoproduto (carrinho, produto) VALUES (?, ?)");
            stmt.setInt(1, c.getIdCarrinhoUser());
            stmt.setInt(2, p.getIdProduto());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();

        }
    }
}
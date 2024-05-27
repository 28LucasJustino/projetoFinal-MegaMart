package model.bean;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

public class CarrinhoDTO {
    private static List<ProdutoDTO> itens = new ArrayList<>();

    public static void adicionarItem(ProdutoDTO produto) {
        itens.add(produto);
    }
    
    public static CarrinhoDTO getOrCreateCarrinho(HttpServletRequest request) {
        CarrinhoDTO carrinho = (CarrinhoDTO) request.getAttribute("carrinho");
        if (carrinho == null) {
            carrinho = new CarrinhoDTO();
            request.setAttribute("carrinho", carrinho);
        }
        return carrinho;
    }

    public static void removerItem(int index) {
        itens.remove(index);
    }

    public static List<ProdutoDTO> getItens() {
        return itens;
    }

    public static float calcularTotal() {
        float total = 0;
        for (ProdutoDTO produto : itens) {
            total += produto.getPreco();
        }
        return total;
    }
}

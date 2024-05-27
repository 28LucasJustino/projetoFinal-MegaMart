package controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DAO.ProdutoDAO;
import model.bean.CarrinhoDTO;
import model.bean.ProdutoDTO;

@WebServlet(name = "CarrinhoController", urlPatterns = {"/Carrinho"})
public class CarrinhoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getServletPath();
        if(url.equals("/Home")){
           String nextPage = "/WEB-INF/jsp/index.jsp";
       
       RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
       dispatcher.forward(request, response); 
       
        }else if(url.equals("/Produtos")){
            String nextPage = "/WEB-INF/jsp/produto.jsp";
       
       RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
       dispatcher.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       CarrinhoDTO carrinho = CarrinhoDTO.getOrCreateCarrinho(request);

    // Retorna a lista de itens do carrinho em formato JSON
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    out.print(toJson(carrinho));
    out.flush();
}
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // Recupera ou cria o carrinho da sessão
    CarrinhoDTO carrinho = CarrinhoDTO.getOrCreateCarrinho(request);
 

    // Adiciona o item ao carrinho
    int idProduto = Integer.parseInt(request.getParameter("id"));
    ProdutoDAO pDao = new ProdutoDAO();
    ProdutoDTO item = pDao.buscarProduto(idProduto);
    if (item.getIdProduto() > 0) {
        carrinho.adicionarItem(item);
    }

    // Retorna a lista de itens do carrinho em formato JSON
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    out.print(toJson(carrinho));
    out.flush();
}

// Método para converter o carrinho em JSON
private String toJson(CarrinhoDTO carrinho) {
    Gson gson = new Gson();
    return gson.toJson(carrinho.getItens());
}
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

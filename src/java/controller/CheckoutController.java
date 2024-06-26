/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DAO.CarrinhoDAO;
import model.DAO.CategoriasDAO;
import model.DAO.EnderecoDAO;
import model.DAO.ProdutoDAO;
import model.DAO.UsuarioDAO;
import model.bean.CategoriasDTO;
import model.bean.EnderecoDTO;
import model.bean.ProdutoDTO;
import model.bean.UsuarioDTO;

/**
 *
 * @author Marce
 */
public class CheckoutController extends HttpServlet {
        UsuarioDAO userDao = new UsuarioDAO();
        ProdutoDAO produtosDAO = new ProdutoDAO();
        CategoriasDAO categoriasDAO = new CategoriasDAO();
        UsuarioDTO u = new UsuarioDTO();
        CarrinhoDAO cDAO = new CarrinhoDAO();
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
        List<CategoriasDTO> categorias = categoriasDAO.listarCategorias();
        request.setAttribute("categorias", categorias);
        String url = request.getServletPath();
        if(url.equals("/Entrega")){
            String nextPage = "/WEB-INF/jsp/entrega.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
            } else if(url.equals("/Pagamento")){
            String nextPage = "/WEB-INF/jsp/formaPagamento.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
            } else if(url.equals("/Checkout")){
            String nextPage = "/WEB-INF/jsp/checkoutFinal.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        }
        
        response.setContentType("text/html;charset=UTF-8");
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("login")) {
                    u = userDao.selecionarUsuarioPorId(Integer.parseInt(cookie.getValue()));
                }
            }
        }
        List<ProdutoDTO> produtos = new ArrayList();
        if (u.getIdUsuario() > 0) {
            produtos = cDAO.listarProdutos(u);
        }
        System.out.println("p" + produtos.size());

        if (produtos.size() < 1) {
            response.sendRedirect("./Carrinho");
        } else {
            if (url.equals("/Entrega")) {
                String nextPage = "/WEB-INF/jsp/entrega.jsp";
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            } else if(url.equals("/Pagamento")){
            String nextPage = "/WEB-INF/jsp/formaPagamento.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
            } else {
                String nextPage = "/WEB-INF/jsp/checkoutFinal.jsp";
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            }
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
        processRequest(request, response);
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
        String url = request.getServletPath();
        if(url.equals("/cadEntrega")) {
         EnderecoDTO newEndereco = new EnderecoDTO();
        newEndereco.setRua(request.getParameter("rua"));
        newEndereco.setBairro(request.getParameter("bairro"));
        newEndereco.setCep(Integer.parseInt(request.getParameter("cep")));
        newEndereco.setEstado(request.getParameter("estado")); 
        newEndereco.setCidade(request.getParameter("cidade")); 
        newEndereco.setNumero(Integer.parseInt(request.getParameter("numero")));
        
        EnderecoDAO endD = new EnderecoDAO();
        endD.create(newEndereco);
        response.sendRedirect("./Pagamento");
            }
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

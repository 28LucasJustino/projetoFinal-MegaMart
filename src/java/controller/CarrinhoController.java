/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DAO.CarrinhoDAO;
import model.DAO.CategoriasDAO;
import model.DAO.ProdutoDAO;
import model.DAO.UsuarioDAO;
import model.bean.CategoriasDTO;
import model.bean.ProdutoDTO;
import model.bean.UsuarioDTO;

/**
 *
 * @author Marce
 */
public class CarrinhoController extends HttpServlet {
        CarrinhoDAO carrinhoDao = new CarrinhoDAO();
        UsuarioDAO userDao = new UsuarioDAO();
        ProdutoDAO prodDao = new ProdutoDAO();
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
        CategoriasDAO categoriasDAO = new CategoriasDAO();
        List<CategoriasDTO> categorias = categoriasDAO.listarCategorias();
        request.setAttribute("categorias", categorias);

        String nextPage = "/WEB-INF/jsp/carrinho.jsp";
        UsuarioDTO user = null;
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("login") && !cookie.getValue().equals("")) {
                user = userDao.selecionarUsuarioPorId(Integer.parseInt(cookie.getValue()));
            }
        }
        if (user == null || user.getIdUsuario() <= 0) {
            response.sendRedirect("./Login");
        } else {
            try {
                List<ProdutoDTO > produtos = carrinhoDao.carrinhoProduto(user);
                Float valorFinal = 0f;
                request.setAttribute("produtos", produtos);
                request.setAttribute("valorFinal", valorFinal);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
       if (!response.isCommitted()) {
            
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
        String url = request.getServletPath();
        Cookie[] cookies = request.getCookies();
        UsuarioDTO user = null;
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("login") && !cookie.getValue().equals("")) {
                user = userDao.selecionarUsuarioPorId(Integer.parseInt(cookie.getValue()));
            }
        }
        if (url.equals("./esvaziarCarrinho")) {
            carrinhoDao.esvaziarCarrinho(user);
            response.sendRedirect("./Carrinho");
        } else if (url.equals("/removerItem")) {
            carrinhoDao.removerProduto(prodDao.selecionarPorId(Integer.parseInt(request.getParameter("item"))), carrinhoDao.selecionarCarrinho(user));
            response.sendRedirect("./Carrinho");
        } else if (url.equals("./adicionarItem")) {
            carrinhoDao.adicionarProduto(prodDao.selecionarPorId(Integer.parseInt(request.getParameter("item"))), carrinhoDao.selecionarCarrinho(user));
            response.sendRedirect("./Carrinho");
        }
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
        processRequest(request, response);
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
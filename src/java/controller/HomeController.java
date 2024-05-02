/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DAO.ProdutoDAO;
import model.bean.ProdutoDTO;


/**
 *
 * @author Marce
 */
public class HomeController extends HttpServlet {

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
        String nextPage = "/WEB-INF/jsp/index.jsp";
       
       RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
       dispatcher.forward(request, response);
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
        if (url.equals("/prod")) {
            String nextPage = "/WEB-INF/jsp/index.jsp";
            ProdutoDTO produto = new ProdutoDTO();
            ProdutoDAO valida = new ProdutoDAO();

        produto.setNome(request.getParameter("nome"));
        produto.setCategoria(request.getParameter("categoria"));
        produto.setDescricao(request.getParameter("descricao"));
        produto.setPreco(Float.parseFloat(request.getParameter("preco")));
        produto.setEstoque(Integer.parseInt(request.getParameter("estoque")));

        
        try {              
          
            if(produto.getNome().trim().equals("") || (produto.getCategoria().trim().equals("")) || (produto.getDescricao().trim().equals(""))){
                nextPage = "/WEB-INF/jsp/cadastro.jsp";
                    request.setAttribute("errorMessage", "ERRO");
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
            } else{
                valida.create(produto); 
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            nextPage = "/WEB-INF/jsp/cadastro.jsp";
            request.setAttribute("errorMessage", "Usuário inválido");
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        }
    } else {
        processRequest(request, response);
    }
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

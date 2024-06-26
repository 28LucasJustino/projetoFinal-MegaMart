/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DAO.UsuarioDAO;
import model.bean.UsuarioDTO;

/**
 *
 * @author Marce
 */
public class LoginController extends HttpServlet {

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
         String nextPage = "/WEB-INF/jsp/login.jsp";
       
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
        if (url.equals("/log")) {
            String nextLogin = "/WEB-INF/jsp/login.jsp";
            UsuarioDTO user = new UsuarioDTO();
            UsuarioDAO userD = new UsuarioDAO();
            user.setEmail(request.getParameter("email"));
            user.setSenha(request.getParameter("senha"));
        try {
            if (userD.buscarLogin(user) != -1) {
                   Cookie cookie = new Cookie("login",Integer.toString(userD.buscarLogin(user)));
                   cookie.setValue(Integer.toString(userD.buscarLogin(user)));
                   response.addCookie(cookie);
         
                   if (user.getStats() == 2) {
                    // redirecionar para página de admin
                    response.sendRedirect("./HomeAdmin");
                } else {
                    // redirecionar para página de usuario
                    response.sendRedirect("./Home");
                }
                } else {
                   nextLogin = "/WEB-INF/jsp/login.jsp";
                   request.setAttribute("Erro ao realizar Login", true);
                   RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextLogin);
                   dispatcher.forward(request, response);
                }
            } catch (Exception e) {
                nextLogin = "/WEB-INF/jsp/login.jsp";
                request.setAttribute("Erro ao realizar Login", true);
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextLogin);
                dispatcher.forward(request, response);
            }
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
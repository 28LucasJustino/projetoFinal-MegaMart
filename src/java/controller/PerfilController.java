/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.DAO.CategoriasDAO;
import model.DAO.UsuarioDAO;
import model.bean.CategoriasDTO;
import model.bean.UsuarioDTO;
import java.sql.Date;

/**
 *
 * @author Marce
 */
public class PerfilController extends HttpServlet {
UsuarioDAO uDao = new UsuarioDAO();
CategoriasDAO categoriasDAO = new CategoriasDAO();
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
        List<CategoriasDTO> categorias = categoriasDAO.listarCategorias();
        request.setAttribute("categorias", categorias);
        Cookie[] cookies = request.getCookies();
        UsuarioDTO u = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("login") && !cookie.getValue().equals("")) {
                    u = uDao.selecionarUsuarioPorId(Integer.parseInt(cookie.getValue()));
                }
            }
        }
        if (u == null || u.getIdUsuario() <= 0) {
            response.sendRedirect("./Login");
        } else {
            request.setAttribute("user", u);
            String nextPage = "/WEB-INF/jsp/perfil.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        }
        if(url.equals("/Pedidos")) {
            String nextPage = "/WEB-INF/jsp/pedidos.jsp";
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
        request.setCharacterEncoding("UTF-8");
        String url = request.getServletPath();
        Cookie[] cookies = request.getCookies();
        Cookie login = new Cookie("login", "null");
        int id = -1;
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("login")) {
                login = cookie;
                id = Integer.parseInt(cookie.getValue());
            }
        }
        UsuarioDTO user = uDao.selecionarUsuarioPorId(id);
        
            
        if (url.equals("/logout")) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("login")) {
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
            System.out.println("aqui" + response.isCommitted());
            response.sendRedirect("./Home");
        } else {
            processRequest(request, response);
        }
        
          if(url.equals("/editDados")) {
         UsuarioDTO editUser = new UsuarioDTO();
        editUser.setNome(request.getParameter("nome"));
        editUser.setEmail(request.getParameter("email"));
        editUser.setTelefone(request.getParameter("telefone"));
        editUser.setCpf(request.getParameter("cpf"));     
        editUser.setSenha(request.getParameter("senha"));
        editUser.setNascimento(Date.valueOf(request.getParameter("nascimento")));
       
            uDao.edit(editUser);
    response.sendRedirect("./Perfil");
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

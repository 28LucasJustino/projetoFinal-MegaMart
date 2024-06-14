/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.DAO.CarrinhoDAO;
import model.DAO.CategoriasDAO;
import model.DAO.ProdutoDAO;
import model.DAO.UsuarioDAO;
import model.bean.CarrinhoUserDTO;
import model.bean.CategoriasDTO;
import model.bean.ProdutoDTO;
import model.bean.UsuarioDTO;


/**
 *
 * @author Marce
 */
@MultipartConfig
public class HomeController extends HttpServlet {
        UsuarioDAO userDao = new UsuarioDAO();
        ProdutoDAO produtosDAO = new ProdutoDAO();
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
         
        Cookie[] cookies = request.getCookies();
        int idUsuario = 0;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("login")) {
                    idUsuario = Integer.parseInt(cookie.getValue());
                }
            }
        }
        if (idUsuario > 0) {
            request.setAttribute("user", userDao.selecionarUsuarioPorId(idUsuario));
        }
         
        List<CategoriasDTO> categorias = categoriasDAO.listarCategorias();
        request.setAttribute("categorias", categorias);
        String url = request.getServletPath();
        System.out.println(url);
        if(url.equals("/Cadastrar-produto")) {
            String nextPage = "/WEB-INF/jsp/admin.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else if(url.equals("/Editar-produtos")){
            String nextPage = "/WEB-INF/jsp/editarProduto.jsp";
            int idProduto = Integer.parseInt(request.getParameter("solo"));
            ProdutoDTO produto = produtosDAO.produtoSolo(idProduto);
            request.setAttribute("produto", produto); 
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else if(url.equals("/Home")){
            List<ProdutoDTO> produtos = produtosDAO.listarProdutos();
            request.setAttribute("produtos", produtos);
            String nextPage = "/WEB-INF/jsp/index.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
            } else if(url.equals("/Descontos")){
            List<ProdutoDTO> produtos = produtosDAO.listarProdutos();
            request.setAttribute("produtos", produtos);
            String nextPage = "/WEB-INF/jsp/desconto.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else if(url.equals("/HomeAdmin")){
            List<ProdutoDTO> produtos = produtosDAO.listarTudo();
            request.setAttribute("produtos", produtos);
            String nextPage = "/WEB-INF/jsp/homeAdmin.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else if (url.equals("/buscarProdutos")) {
            String busca = request.getParameter("busca") == null? request.getParameter("busca") : "";
            if(busca.trim().equals("")) {
                String categoria = request.getParameter("cat");
                List<ProdutoDTO> produtos = produtosDAO.buscarCate(Integer.parseInt(categoria));
                request.setAttribute("produtos", produtos);
            } else {
                busca = "%"+busca+"%";
                List<ProdutoDTO> produtos = produtosDAO.buscarProd(busca);
                request.setAttribute("produtos", produtos);
            }
            String nextPage = "/WEB-INF/jsp/index.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } 
        else if (url.equals("/Produtos")){
            String nextPage = "/WEB-INF/jsp/produtos.jsp";
            int idProduto = Integer.parseInt(request.getParameter("solo"));
            ProdutoDAO prodDAO = new ProdutoDAO();
            ProdutoDTO produto = prodDAO.produtoSolo(idProduto);
            request.setAttribute("produto", produto);         
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
        String url = request.getServletPath();
        Cookie[] cookies = request.getCookies();
        UsuarioDTO user = new UsuarioDTO();
        CarrinhoUserDTO cart = new CarrinhoUserDTO();
        UsuarioDAO userDao = new UsuarioDAO();
        CarrinhoDAO cartDao = new CarrinhoDAO();
        ProdutoDTO prod = new ProdutoDTO();
        ProdutoDAO pDao = new ProdutoDAO();
        if (url.equals("/sendToCart")) {
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("login") && !cookie.getValue().equals("")) {
                        user = userDao.selecionarUsuarioPorId(Integer.parseInt(cookie.getValue()));
                    }
                }
            }
            if (user == null || user.getIdUsuario() == 0) {
                response.sendRedirect("./Login");        
            } else {
                prod = pDao.produtoSolo(Integer.parseInt(request.getParameter("addProduto")));
                cart = cartDao.selecionarCarrinho(user);
                cartDao.addProduto(prod, cart);
                response.sendRedirect("./Home");
            }
        }        
        if(url.equals("/cadastrarProduto")) {
         ProdutoDTO newProduto = new ProdutoDTO();
        newProduto.setNome(request.getParameter("nome"));
        newProduto.setMarca(request.getParameter("marca"));
        newProduto.setCategoria(Integer.parseInt(request.getParameter("categoria")));
        newProduto.setDescricao(request.getParameter("descricao"));      
        newProduto.setPreco(Float.parseFloat(request.getParameter("preco")));
        newProduto.setDesconto(Float.parseFloat(request.getParameter("desconto")));
        newProduto.setEstoque(Integer.parseInt(request.getParameter("estoque")));
        Part filePart = request.getPart("img");
    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); 
    if (fileName != null && !fileName.isEmpty()) {
        String basePath = getServletContext().getRealPath("/") + "assets"; 
        File uploads = new File(basePath);
        if (!uploads.exists()) {
            uploads.mkdirs(); 
        }
        File file = new File(uploads, fileName);

        try (InputStream input = filePart.getInputStream()) {
            Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        } catch (Exception e) {
            e.printStackTrace(); 
        }
        newProduto.setImg("assets/" + fileName);
    } else {
        newProduto.setImg(null);
    }

    ProdutoDAO produtosD = new ProdutoDAO();
    produtosD.create(newProduto);
    response.sendRedirect("./HomeAdmin");
            }
      if(url.equals("/editarProduto")) {
         ProdutoDTO newProduto = new ProdutoDTO();
        newProduto.setNome(request.getParameter("nome"));
        newProduto.setMarca(request.getParameter("marca"));
        newProduto.setCategoria(Integer.parseInt(request.getParameter("categoria")));
        newProduto.setDescricao(request.getParameter("descricao"));      
        newProduto.setPreco(Float.parseFloat(request.getParameter("preco")));
        newProduto.setEstoque(Integer.parseInt(request.getParameter("estoque")));
        Part filePart = request.getPart("img");
    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); 
    if (fileName != null && !fileName.isEmpty()) {
        String basePath = getServletContext().getRealPath("/") + "assets"; 
        File uploads = new File(basePath);
        if (!uploads.exists()) {
            uploads.mkdirs(); 
        }
        File file = new File(uploads, fileName);

        try (InputStream input = filePart.getInputStream()) {
            Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        } catch (Exception e) {
            e.printStackTrace(); 
        }
        newProduto.setImg("assets/" + fileName);
    } else {
        newProduto.setImg(null);
    }

    ProdutoDAO produtosD = new ProdutoDAO();
    produtosD.edit(newProduto);
    response.sendRedirect("./HomeAdmin");
            }      
      if(url.equals("/dropProduto")) {
          ProdutoDTO newProduto = new ProdutoDTO();
          ProdutoDAO produtosD = new ProdutoDAO();
          produtosD.drop(newProduto);
          response.sendRedirect("./HomeAdmin");
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
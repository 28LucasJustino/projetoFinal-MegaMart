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
        //inicio dos codigos do João Guilherme
         UsuarioDAO uDao = new UsuarioDAO();
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
            request.setAttribute("user", uDao.selecionarUsuarioPorId(idUsuario));
        }
        //fim
        ProdutoDAO produtosDAO = new ProdutoDAO();
        CategoriasDAO categoriasDAO = new CategoriasDAO();
        List<CategoriasDTO> categorias = categoriasDAO.listarCategorias();
        request.setAttribute("categorias", categorias);
        String url = request.getServletPath();
        System.out.println(url);
        if(url.equals("/Cadastrar-produto")) {
            String nextPage = "/WEB-INF/jsp/admin.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else if(url.equals("/Home")){
            List<ProdutoDTO> produtos = produtosDAO.listarProdutos();
            request.setAttribute("produtos", produtos);
            String nextPage = "/WEB-INF/jsp/index.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else if (url.equals("/buscar-produtos")) {
            String busca = request.getParameter("busca") != null? request.getParameter("busca") : "";
            if(busca.trim().equals("")) {
                String categoria = request.getParameter("cat");
                List<ProdutoDTO> produtos = produtosDAO.buscarCategoria(Integer.parseInt(categoria));
                request.setAttribute("produtos", produtos);
            } else {
                busca = "%"+busca+"%";
                List<ProdutoDTO> produtos = produtosDAO.buscarProduto(busca);
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
         ProdutoDTO newProduto = new ProdutoDTO();
        newProduto.setNome(request.getParameter("nome"));
        newProduto.setNome(request.getParameter("nome"));
        newProduto.setCategoria(Integer.parseInt(request.getParameter("categoria")));
        newProduto.setDescricao(request.getParameter("descricao"));
        newProduto.setDescricao(request.getParameter("descricao"));
        newProduto.setEstoque(Integer.parseInt(request.getParameter("estoque")));
        newProduto.setPreco(Float.parseFloat(request.getParameter("preco")));
        Part filePart = request.getPart("img");
    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // Corrige problemas com o navegador IE
    if (fileName != null && !fileName.isEmpty()) {
        String basePath = getServletContext().getRealPath("/") + "assets"; // Caminho para a pasta assets
        File uploads = new File(basePath);
        if (!uploads.exists()) {
            uploads.mkdirs(); // Cria o diretório se não existir
        }
        File file = new File(uploads, fileName);

        try (InputStream input = filePart.getInputStream()) {
            Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        } catch (Exception e) {
            e.printStackTrace(); // Trate as exceções de forma adequada
        }

        // Configurando apenas o caminho relativo da imagem no banco de dados
        newProduto.setImg("assets/" + fileName);
    } else {
        newProduto.setImg(null);
    }

    // Salvar o produto com o caminho da imagem no banco
    ProdutoDAO produtosD = new ProdutoDAO();
    produtosD.create(newProduto);
    response.sendRedirect("./Home");
    
    
    request.setCharacterEncoding("UTF-8");
        Cookie[] cookies = request.getCookies();
        UsuarioDTO user = new UsuarioDTO();
        CarrinhoUserDTO cart = new CarrinhoUserDTO();
        UsuarioDAO userDao = new UsuarioDAO();
        CarrinhoDAO cartDao = new CarrinhoDAO();
        ProdutoDTO prod = new ProdutoDTO();
        ProdutoDAO pDao = new ProdutoDAO();
        String url = request.getServletPath();
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
                prod = pDao.selecionarPorId(Integer.parseInt(request.getParameter("addProduto")));
                cart = cartDao.selecionarCarrinho(user);
                cartDao.addProduto(prod, cart);
                response.sendRedirect("./Home");
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
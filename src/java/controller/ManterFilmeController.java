/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Categoria;
import modelo.Filme;
import modelo.Fornecedor;
import modelo.Genero;
import modelo.TipoDeMidia;

/**
 *
 * @author Ramon
 */
public class ManterFilmeController extends HttpServlet {

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
        throws ServletException, IOException, ClassNotFoundException, SQLException {
        String acao = request.getParameter("acao");
        if (acao.equals("prepararIncluir")) {
            prepararIncluir(request, response);
        } else {
            if (acao.equals("confirmarIncluir")){
                confirmarIncluir(request, response);
            } else {
                if (acao.equals("prepararEditar")){
                    prepararEditar(request, response);
                } else {
                    if (acao.equals("confirmarEditar")){
                        confirmarEditar(request, response);
                    } else {
                        if (acao.equals("prepararExcluir")){
                            //prepararExcluir(request, response);
                        } else {
                            if (acao.equals("confirmarExcluir")){
                                //confirmarExcluir(request, response);
                            }
                        }
                    }
                }
            } 
        }
    }
    
    public void prepararIncluir(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
        try{
            request.setAttribute("operacao", "Incluir");
            request.setAttribute("categorias", Categoria.obterCategorias());
            request.setAttribute("generos", Genero.obterGeneros());
            request.setAttribute("tiposdemidias", TipoDeMidia.obterTipoDeMidias());
            request.setAttribute("fornecedores", Fornecedor.obterFornecedores());
            
            
            RequestDispatcher view = request.getRequestDispatcher("/manterFilme.jsp");
            view.forward(request, response);
        } catch (ServletException ex){
        } catch (IOException ex) { 
        } 
    }
    
    public void confirmarIncluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, ClassNotFoundException, SQLException{
        int codFilme = Integer.parseInt(request.getParameter("codFilme"));
        String titulo = request.getParameter("titulo");
        String tituloOriginal = request.getParameter("tituloOriginal");
        String nomeDiretor = request.getParameter("nomeDiretor");
        String nomeAtorPrincipal = request.getParameter("nomeAtorPrincipal");
        String nomePremiacoes = request.getParameter("nomePremiacoes");
        String anoProducao = request.getParameter("anoProducao");
        String anoLancamento = request.getParameter("anoLancamento");
        Categoria categoria = new Categoria(Integer.parseInt(request.getParameter("codCategoria")), null, null, null, null);
        Genero genero = new Genero(Integer.parseInt(request.getParameter("codGenero")), null, null);
        TipoDeMidia tipoDeMidia = new TipoDeMidia(Integer.parseInt(request.getParameter("codTipoDeMidia")), null, null);
        Fornecedor fornecedor = new Fornecedor(Integer.parseInt(request.getParameter("codFornecedor")), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
        try{
            Filme filme = new Filme(codFilme, titulo, tituloOriginal, nomeDiretor, nomeAtorPrincipal, nomePremiacoes, anoProducao, anoLancamento, categoria, genero, tipoDeMidia, fornecedor);
            filme.gravar();
            RequestDispatcher view = request.getRequestDispatcher("ConsultaFilmeController");
            view.forward(request, response);
        } catch (IOException ex){
        } catch (ServletException ex){
        }
    }    
    
    private void prepararEditar(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        try {
            request.setAttribute("operacao", "Editar");
            request.setAttribute("filme", Filme.obterFilmes());
            int codFilme = Integer.parseInt(request.getParameter("codFilme"));
            Filme filme = Filme.obterFilme(codFilme);
            request.setAttribute("filme", filme);
            RequestDispatcher view = request.getRequestDispatcher("/manterFilme.jsp");
            view.forward(request, response);
        } catch (ServletException ex){
        } catch (IOException ex){
        } catch (ClassNotFoundException ex){
        }
    }

    private void confirmarEditar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException {
        int codFilme = Integer.parseInt(request.getParameter("codFilme"));
        String titulo = request.getParameter("titulo");
        String tituloOriginal = request.getParameter("tituloOriginal");
        String nomeDiretor = request.getParameter("nomeDiretor");
        String nomeAtorPrincipal = request.getParameter("nomeAtorPrincipal");
        String nomePremiacoes = request.getParameter("nomePremiacoes");
        String anoProducao = request.getParameter("anoProducao");
        String anoLancamento = request.getParameter("anoLancamento");
        Categoria categoria = new Categoria(Integer.parseInt(request.getParameter("codCategoria")), null, null, null, null);
        Genero genero = new Genero(Integer.parseInt(request.getParameter("codGenero")), null, null);
        TipoDeMidia tipoDeMidia = new TipoDeMidia(Integer.parseInt(request.getParameter("codTipoDeMidia")), null, null);
        Fornecedor fornecedor = new Fornecedor(Integer.parseInt(request.getParameter("codFornecedor")), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
        try{
            Filme filme = new Filme(codFilme, titulo, tituloOriginal, nomeDiretor, nomeAtorPrincipal, nomePremiacoes, anoProducao, anoLancamento, categoria, genero, tipoDeMidia, fornecedor);
            filme.alterar();
            RequestDispatcher view = request.getRequestDispatcher("ConsultaFilmeController");
            view.forward(request, response);
        } catch (IOException ex){
        } catch (ServletException ex){
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterFilmeController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ManterFilmeController.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterFilmeController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ManterFilmeController.class.getName()).log(Level.SEVERE, null, ex);
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

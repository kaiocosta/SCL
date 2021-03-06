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
import modelo.TipoDeMidia;

/**
 *
 * @author Ramon
 */
public class ManterTipoDeMidiaController extends HttpServlet {

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
                            prepararExcluir(request, response);
                        } else {
                            if (acao.equals("confirmarExcluir")){
                                confirmarExcluir(request, response);
                            }
                        }
                    }
                }
            } 
        }
    }
    
    public void prepararIncluir(HttpServletRequest request, HttpServletResponse response){
        try{
            request.setAttribute("operacao", "Incluir");
            RequestDispatcher view = request.getRequestDispatcher("/manterTipoDeMidia.jsp");
            view.forward(request, response);
        } catch (ServletException ex){
        } catch (IOException ex) { 
        } 
    }
    
    public void confirmarIncluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, ClassNotFoundException, SQLException{
        int codTipoDeMidia = Integer.parseInt(request.getParameter("codTipoDeMidia"));
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        try{
           TipoDeMidia tipoDeMidia = new TipoDeMidia(codTipoDeMidia, nome, descricao);
            tipoDeMidia.gravar();
            RequestDispatcher view = request.getRequestDispatcher("ConsultaTipoDeMidiaController");
            view.forward(request, response);
        } catch (IOException ex){
        } catch (SQLException ex){
        } catch (ServletException ex){
        }
    }
    
    private void prepararEditar(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        try {
            request.setAttribute("operacao", "Editar");
            request.setAttribute("tipoDeMidia", TipoDeMidia.obterTipoDeMidias());
            int codTipoDeMidia = Integer.parseInt(request.getParameter("codTipoDeMidia"));
            TipoDeMidia tipoDeMidia = TipoDeMidia.obterTipoDeMidia(codTipoDeMidia);
            request.setAttribute("tipoDeMidia", tipoDeMidia);
            RequestDispatcher view = request.getRequestDispatcher("/manterTipoDeMidia.jsp");
            view.forward(request, response);
        } catch (ServletException ex){
        } catch (IOException ex){
        } catch (ClassNotFoundException ex){
        }
    }
    
    public void confirmarEditar(HttpServletRequest request, HttpServletResponse response) throws ServletException, ClassNotFoundException, SQLException{
        int codTipoDeMidia = Integer.parseInt(request.getParameter("codTipoDeMidia"));
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        try{
           TipoDeMidia tipoDeMidia = new TipoDeMidia(codTipoDeMidia, nome, descricao);
            tipoDeMidia.alterar();
            RequestDispatcher view = request.getRequestDispatcher("ConsultaTipoDeMidiaController");
            view.forward(request, response);
        } catch (IOException ex){
        } catch (SQLException ex){
        } catch (ServletException ex){
        }
    }
    
    
    private void prepararExcluir(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        try {
            request.setAttribute("operacao", "Excluir");
            request.setAttribute("tipoDeMidia", TipoDeMidia.obterTipoDeMidias());
            int codTipoDeMidia = Integer.parseInt(request.getParameter("codTipoDeMidia"));
            TipoDeMidia tipoDeMidia = TipoDeMidia.obterTipoDeMidia(codTipoDeMidia);
            request.setAttribute("tipoDeMidia", tipoDeMidia);
            RequestDispatcher view = request.getRequestDispatcher("/manterTipoDeMidia.jsp");
            view.forward(request, response);
        } catch (ServletException ex){
        } catch (IOException ex){
        } catch (ClassNotFoundException ex){
        }
    }
    
    public void confirmarExcluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, ClassNotFoundException, SQLException{
        int codTipoDeMidia = Integer.parseInt(request.getParameter("codTipoDeMidia"));
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        try{
           TipoDeMidia tipoDeMidia = new TipoDeMidia(codTipoDeMidia, nome, descricao);
            tipoDeMidia.excluir();
            RequestDispatcher view = request.getRequestDispatcher("ConsultaTipoDeMidiaController");
            view.forward(request, response);
        } catch (IOException ex){
        } catch (SQLException ex){
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
            Logger.getLogger(ManterTipoDeMidiaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ManterTipoDeMidiaController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ManterTipoDeMidiaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ManterTipoDeMidiaController.class.getName()).log(Level.SEVERE, null, ex);
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

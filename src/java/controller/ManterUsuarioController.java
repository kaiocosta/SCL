
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
import modelo.Usuario;

/**
 *
 * @author Ramon
 */
public class ManterUsuarioController extends HttpServlet {

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
            RequestDispatcher view = request.getRequestDispatcher("/manterUsuario.jsp");
            view.forward(request, response);
        } catch (ServletException ex){
        } catch (IOException ex) { 
        } 
    }
    
    public void confirmarIncluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, ClassNotFoundException, SQLException{
        int codUsuario = Integer.parseInt(request.getParameter("codUsuario"));
        String nome = request.getParameter("nome");
        String sexo = request.getParameter("sexo");
        String dataDeNasc = request.getParameter("dataDeNasc");
        String estadoCivil = request.getParameter("estadoCivil");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        String cep = request.getParameter("cep");
        String bairro = request.getParameter("bairro");
        String logradouro = request.getParameter("logradouro");
        String numero = request.getParameter("numero");
        String complemento = request.getParameter("complemento");
        String estado = request.getParameter("estado");
        String cidade = request.getParameter("cidade");
        String telefone1 = request.getParameter("telefone1");
        String telefone2 = request.getParameter("telefone2");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        
        try{
            Usuario usuario = new Usuario(codUsuario, nome, sexo, dataDeNasc, estadoCivil, cpf, rg, login, senha, cep, bairro, logradouro, numero, complemento, estado, cidade, telefone1, telefone2, celular, email);
            usuario.gravar();
            RequestDispatcher view = request.getRequestDispatcher("ConsultaUsuarioController");
            view.forward(request, response);
        } catch (IOException | SQLException | ServletException ex){
        }
    }
   
    private void prepararEditar(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        try {
            request.setAttribute("operacao", "Editar");
            request.setAttribute("usuario", Usuario.obterUsuarios());
            int codUsuario = Integer.parseInt(request.getParameter("codUsuario"));
            Usuario usuario = Usuario.obterUsuario(codUsuario);
            request.setAttribute("usuario", usuario);
            RequestDispatcher view = request.getRequestDispatcher("/manterUsuario.jsp");
            view.forward(request, response);
        } catch (ServletException ex){
        } catch (IOException ex){
        } catch (ClassNotFoundException ex){
        }
    }
        
    public void confirmarEditar(HttpServletRequest request, HttpServletResponse response) throws ServletException, ClassNotFoundException, SQLException{
        int codUsuario = Integer.parseInt(request.getParameter("codUsuario"));
        String nome = request.getParameter("nome");
        String sexo = request.getParameter("sexo");
        String dataDeNasc = request.getParameter("dataDeNasc");
        String estadoCivil = request.getParameter("estadoCivil");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        String cep = request.getParameter("cep");
        String bairro = request.getParameter("bairro");
        String logradouro = request.getParameter("logradouro");
        String numero = request.getParameter("numero");
        String complemento = request.getParameter("complemento");
        String estado = request.getParameter("estado");
        String cidade = request.getParameter("cidade");
        String telefone1 = request.getParameter("telefone1");
        String telefone2 = request.getParameter("telefone2");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        
        try{
            Usuario usuario = new Usuario(codUsuario, nome, sexo, dataDeNasc, estadoCivil, cpf, rg, login, senha, cep, bairro, logradouro, numero, complemento, estado, cidade, telefone1, telefone2, celular, email);
            usuario.alterar();
            RequestDispatcher view = request.getRequestDispatcher("ConsultaUsuarioController");
            view.forward(request, response);
        } catch (IOException | ServletException ex){
        }
        }
    
    private void prepararExcluir(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        try {
            request.setAttribute("operacao", "Excluir");
            request.setAttribute("usuario", Usuario.obterUsuarios());
            int codUsuario = Integer.parseInt(request.getParameter("codUsuario"));
            Usuario usuario = Usuario.obterUsuario(codUsuario);
            request.setAttribute("usuario", usuario);
            RequestDispatcher view = request.getRequestDispatcher("/manterUsuario.jsp");
            view.forward(request, response);
        } catch (ServletException ex){
        } catch (IOException ex){
        } catch (ClassNotFoundException ex){
        }
    }
        
    public void confirmarExcluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, ClassNotFoundException, SQLException{
        int codUsuario = Integer.parseInt(request.getParameter("codUsuario"));
        String nome = request.getParameter("nome");
        String sexo = request.getParameter("sexo");
        String dataDeNasc = request.getParameter("dataDeNasc");
        String estadoCivil = request.getParameter("estadoCivil");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        String cep = request.getParameter("cep");
        String bairro = request.getParameter("bairro");
        String logradouro = request.getParameter("logradouro");
        String numero = request.getParameter("numero");
        String complemento = request.getParameter("complemento");
        String estado = request.getParameter("estado");
        String cidade = request.getParameter("cidade");
        String telefone1 = request.getParameter("telefone1");
        String telefone2 = request.getParameter("telefone2");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        
        try{
            Usuario usuario = new Usuario(codUsuario, nome, sexo, dataDeNasc, estadoCivil, cpf, rg, login, senha, cep, bairro, logradouro, numero, complemento, estado, cidade, telefone1, telefone2, celular, email);
            usuario.excluir();
            RequestDispatcher view = request.getRequestDispatcher("ConsultaUsuarioController");
            view.forward(request, response);
        } catch (IOException | ServletException ex){
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
            Logger.getLogger(ManterUsuarioController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ManterUsuarioController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ManterUsuarioController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ManterUsuarioController.class.getName()).log(Level.SEVERE, null, ex);
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
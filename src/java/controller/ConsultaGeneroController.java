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
import modelo.Genero;
/**
 *
 * @author Ramon
 */
public class ConsultaGeneroController  extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            request.setAttribute("genero", Genero.obterGeneros());
            RequestDispatcher view = 
                    request.getRequestDispatcher("/consultaGenero.jsp");
            view.forward(request, response);
        }catch (ClassNotFoundException e){
        }
    }
}

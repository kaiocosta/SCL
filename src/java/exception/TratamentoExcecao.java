/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exception;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ramon
 */
public class TratamentoExcecao extends HttpServlet{
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
      Exception excecao = (Exception)
              request.getAttribute("javax.servlet.error.exception");
      Integer codigoStatus = (Integer)
              request.getAttribute("javax.servlet.error.status_code");
      String nomeServlet = (String)
              request.getAttribute("javax.servlet.error.servlet_name");
      String uriRequisicao = (String)
              request.getAttribute("javax.error.request_uri");
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      String titulo = "Informação de Exceção";
      String tipoDocto = 
              "<!doctype html public \"-//w3c//dtd html 4.0 transitional//en\">\n";
      out.println(tipoDocto + "<html>\n<head><title>" + titulo +"</title></head>\n<body>");
      out.println("<h2>Informacao sobre a exceção</h2>");
      out.println("Código do status: "+codigoStatus+"</br></br>");
      out.println("Nome do servlet: "+nomeServlet+"</br></br>");
      out.println("Tipo de exceção: "+excecao.getClass().getName()+"</br></br>");
      out.println("URI da requisição: "+ uriRequisicao+"</br></br>");
      out.println("Mensagem: "+excecao.getMessage());
      out.println("</body>");
      out.println("</html>");
    }
}
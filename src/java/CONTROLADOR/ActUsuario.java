/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;

import MODELO.usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Derick
 */
public class ActUsuario extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Integer idusuario=Integer.parseInt(request.getParameter("codigo"));
        Integer idpersona=Integer.parseInt(request.getParameter("persona"));
        String nickusuario=request.getParameter("nick");
        String passwordusuario=request.getParameter("password");
        String estadousuario=request.getParameter("estado");
        String nivel=request.getParameter("nivel");
        
        usuario t=new usuario();
        t.setIdusuario(idusuario);
        t.setIdpersona(idpersona);
        t.setNickusuario(nickusuario);
        t.setPasswordusuario(passwordusuario);
        t.setEstadousuario(estadousuario);
        t.setNivel(nivel);
        
        
        if(t.actualizar()==true)
        {
            out.println("<script type=\"text/javascript\">");
   out.println("alert('Datos Actualizados');");
   out.println("location='administrador2.jsp';");
   out.println("</script>");
        }
        else
        {
           out.println("<script type=\"text/javascript\">");
   out.println("alert('Datos no Actualizados');");
   out.println("location='editar2.jsp';");
   out.println("</script>"); 
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

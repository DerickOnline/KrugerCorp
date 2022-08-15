/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;

import MODELO.personal2;
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
public class RegPersonal2 extends HttpServlet {

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
        String nombre=request.getParameter("nombre");
        String apellido=request.getParameter("apellido");
        String fecha=request.getParameter("fecha");
        String mailpersona=request.getParameter("email");
        String movilpersona=request.getParameter("telefono");
        String cedula=request.getParameter("cedula");
        String vacuna=request.getParameter("vacuna");
        String tvacuna=request.getParameter("tvacuna");
        String fvacuna=request.getParameter("fvacuna");
        String nvacuna=request.getParameter("nvacuna");
        String direccion=request.getParameter("direccion");
        
        personal2 t=new personal2();
        t.setNombre(nombre);
        t.setApellido(apellido);
        t.setFecha(fecha);
        t.setMailpersona(mailpersona);
        t.setMovilpersona(movilpersona);
        t.setCedula(cedula);
        t.setVacuna(vacuna);
        t.setTvacuna(tvacuna);
        t.setFvacuna(fvacuna);
        t.setNvacuna(nvacuna);
        t.setDireccion(direccion);
      
        
         if(t.insertar()==true)
        {
   out.println("<script type=\"text/javascript\">");
   out.println("alert('Datos Ingresados');");
   out.println("location='ingreso.jsp';");
   out.println("</script>");
        }
        else
        {
           out.println("<script type=\"text/javascript\">");
   out.println("alert('Datos no Ingresados');");
   out.println("location='ingreso.jsp';");
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.ConexionBD;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.*;

/**
 *
 * @author Padilla_Bustamante
 */
@WebServlet(name = "contactos", urlPatterns = {"/contactos"})
public class contactos extends HttpServlet {

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
        //verifica si los datos son correctos
        
        try (PrintWriter out = response.getWriter()) {
            
            String query;
            String a=request.getParameter("txtNombreC");
            String b=request.getParameter("txtApat");
            String c=request.getParameter("txtAmat");
            String d=request.getParameter("txtPuesto");
            String e=request.getParameter("txtTelefonoC");
            String g=request.getParameter("txtEmail");
            
            ConexionBD con = new ConexionBD();
            
            if((a.trim()).equals("")||(d.trim()).equals("")||(e.trim()).equals("")||(g.trim()).equals("")){
                out.println("Existen campos vacios");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            else{
                out.println("here");
                query="insert into Contacto(Nombre, APaterno,AMaterno,Puesto Telefono,Email)values ('" +a+"',"+"'"+b+"',"+c+"',"+d+"',"+e+"',"+g+"')";
                con.Conect(query);
                request.getRequestDispatcher("FelicitacionesIngreso.jsp").forward(request, response);
                
            }
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

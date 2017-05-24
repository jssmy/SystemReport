/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.R_User_Atencion_Controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONObject;

/**
 *
 * @author jssmy
 */
@WebServlet(name = "R_User_Atencion_serv", urlPatterns = {"/atention-employee","/atention-detail","/report-all-day","/chart-user-requerimientos","/chart-user-incidencias","/enterprice-atention","/chart-group"})
public class R_User_Atencion_serv extends HttpServlet {
    String destino="/pages/atencion_empleado.jsp";
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
        
      //R_User_Atencion_Controller rud = new R_User_Atencion_Controller();
      String path = request.getServletPath();
      if(path.equals("/atention-employee"))
      {
          destino ="/pages/atencion_empleado.jsp";
          
      }
      else if(path.equals("/atention-detail"))
      {
          destino="/pages/detalle_atencion_empleado.jsp";
      }
      else if(path.equals("/report-all-day"))
      {
          
          destino="/pages/atencion_diaria.jsp";
      }
      else if(path.equals("/chart-user-requerimientos"))
      {
         
          
          destino="/pages/chart_requerimientos.jsp";
      }
       else if(path.equals("/chart-user-incidencias"))
      {
         
          destino="/pages/chart_incidencia.jsp";
      }
       else if(path.equals("/enterprice-atention")){
           destino= "/pages/chart_atencion_empresa.jsp";
       
       }
       else if(path.equals("/chart-group")){
           destino="/pages/chart_group.jsp";
       
       }
      
                RequestDispatcher rd = request.getRequestDispatcher(destino);
                
		rd.forward(request, response);
                 
        
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

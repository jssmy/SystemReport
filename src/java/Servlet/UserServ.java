/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.UserController;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.eclipse.jdt.internal.compiler.ast.Initializer;

/**
 *
 * @author jssmy
 */
@WebServlet(name = "UserServ", urlPatterns = {"/login","/create-user","/logout"})
public class UserServ extends HttpServlet {
    String url = "index.jsp";
    User u = new User();
    UserController uc = new UserController();
    HttpSession s =null;

    public UserServ(){
        System.out.println("inicializar servlet-----------");        
        u = new User();
        uc = new UserController();
        
    }
    
    
    //public Initializer
    
    
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
        try{
            System.out.println("-----acaaa-------");
            s = request.getSession(true);
            String path = request.getServletPath();
            System.out.println(path);
            switch(path){
                case "/login":
                    if(s.getAttribute("user")==null){
                        log(request, response);
                    }
                    else{
                    url="index.jsp";
                    }
                    
                break;
                case "/create-user":
                        
                    
                        break;
                case "/logout":
                    s.invalidate();
                    url="index.jsp";
                    
                    
                    break;
            
            }
            
            
            System.out.println("-------------------------------------");
            System.out.println(path);
            
            RequestDispatcher rd = request.getRequestDispatcher(url);
            
            rd.forward(request, response);
        }catch(Exception e){
            System.out.println("error servel user"+e.toString());
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
   
   ////
    
   
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    
    
    protected void log(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("..........-----aca estoy---......");
          String email = request.getParameter("email");
                        String pass = request.getParameter("pass");
                        System.out.println("------------"+pass);
                        u= new User();
                        u.setEmail(email);
                        u.setPassword(pass);
                        //u=null;
                        u= uc.Login(u);     
                        if(u!=null){
                            System.out.println("iniciar session");
                            s.setAttribute("user", u);
                            s.setAttribute("ID", s.getId());
                            url="pages/home.jsp";
                        }
                        else{
                            request.setAttribute("message","Credenciales incorrectas");

                            url="index.jsp";
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
        System.out.println("..........-----aca estoy---......");
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

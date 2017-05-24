/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.R_User_Atencion_Controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.*;
import java.util.Date;
import java.text.DateFormat;
import  java.text.SimpleDateFormat;


/**
 *
 * @author jssmy
 */
@WebServlet(name = "chart_report", urlPatterns = {"/chart_report"})
public class chart_report extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void chart_incidencia(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
            try {
                R_User_Atencion_Controller ua = new R_User_Atencion_Controller();
               JSONObject obj = set_time(request);
                
                obj.put("tipo", "incidente");
           
          
                JSONArray ls= ua.chart_empleado(obj);
                JSONObject data = data(request, ls);
                
            response.setContentType("application/json");
            response.getWriter().write(data.toJSONString());
            } catch (Exception e) {
                response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("Sucedio algun error");
            }
               
        }
    }

    
        private JSONObject data(HttpServletRequest request,JSONArray ls)
        {
            int index=1;
                if(request.getParameter("index")!=null)
                {
                    index= Integer.parseInt(request.getParameter("index"));
                }
                index=(index-1)*10;
                JSONArray dtls = new JSONArray();
                int cant =0;
                for(int i=index; i<ls.size(); i++){
                    dtls.add(ls.get(i));
                    cant++;
                    if(cant==10){
                    break;
                    }
                }
            JSONObject data= new JSONObject();
            double t= (double)(ls.size()-1)/10;
            int q = ((ls.size()-1)/10);
            if(t>q){
                System.out.println("entero: "+ q +" double: "+t);
            q=q+1;
            }
            data.put("data", dtls);
            data.put("size", q);
            
            
            return data;
            
        }
    
        
        protected void chart_requerimiento(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
            try {
                R_User_Atencion_Controller ua = new R_User_Atencion_Controller();
               JSONObject obj = set_time(request);
                obj.put("tipo", "requerimiento");
                JSONArray ls= ua.chart_empleado(obj);
                JSONObject data = data(request, ls);
                    
               
           
           
            
            response.setContentType("application/json");
            response.getWriter().write(data.toJSONString());
            } catch (Exception e) {
                response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("Sucedio algun error");
            }
               
        }
    }
        
        
        
        
        protected void chart_grupo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
            try {
                R_User_Atencion_Controller ua = new R_User_Atencion_Controller();
               JSONObject obj = set_time(request);
                JSONArray data = ua.chart_group(obj);
            response.setContentType("application/json");
            response.getWriter().write(data.toJSONString());
            } catch (Exception e) {
                response.setContentType("text/html;charset=UTF-8");
                System.out.println("error ser: " + e.toString());
            response.getWriter().write("Sucedio algun error");
            }
               
        }
    }
        private JSONObject set_time( HttpServletRequest request ){
            try {
                JSONObject obj= new JSONObject();
            String min="";
               String max="";
               Date date;
               SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
               /// si no se envia la fecha maxima y minima desde la vista,
               /// por defecto se asigna la fecha actua como minima la fecha actual empezando desde el dia 1 y l maxima un mes posterior
               if(request.getParameter("date_min").equals("") && request.getParameter("date_max").equals(""))
               {
                   // dia por defecto
                   date = new Date();
                   date.setDate(1); //setiar dia 1
                   min = d.format(date);  //dia actual minima
                   date.setMonth(date.getMonth()+1); // setiar mes posterios
                   max = d.format(date);
                    
               }
               else{
                   String a = request.getParameter("date_min");
                   System.out.println("date: "+a);
                   date =  d.parse(a);
                   min = d.format(date);
                   a = request.getParameter("date_max");
                   date = d.parse(a);
                   max = d.format(date);   
               }
                obj.put("min",min);
                obj.put("max",max);
                System.out.println("objeto tiempo: " + obj);
            
                return obj;
        
            } catch (Exception e) {
                System.out.println("error objeto tiempo: "  + e.toString());
                return null;
            }
        }
        
        
        
           protected void chart_atencion_empresa(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
            try {
                R_User_Atencion_Controller ua = new R_User_Atencion_Controller();
               JSONObject obj = set_time(request);
               
                JSONArray ls= ua.chart_empleado_empresa(obj);
                JSONObject data = data(request, ls);
                
            response.setContentType("application/json");
            response.getWriter().write(data.toJSONString());
            } catch (Exception e) {
                response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("Sucedio algun error");
            }
               
        }
    }
        
        
        
        
        
        
        
          protected void atencion_diaria(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
            try {
           
                R_User_Atencion_Controller rud = new R_User_Atencion_Controller();
                
                //JSONObject  o = new JSONObject();
                JSONObject o=   rud.atencion_diaria();
                System.out.println("data> : "+o);
         
               
           
           
            
            response.setContentType("application/json");
            response.getWriter().write(o.toJSONString());
            } catch (Exception e) {
                response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("Sucedio algun error");
            }
               
        }
    }
    
          
          
         protected void atencion_empleado(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
            try {
           
                R_User_Atencion_Controller rud = new R_User_Atencion_Controller();
                 JSONObject data= rud.atencion_empleado();
            response.setContentType("application/json");
            response.getWriter().write(data.toJSONString());
            } catch (Exception e) {
                response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("Sucedio algun error");
            }
               
        }
    }
          
         
         protected void atencion_empleado_nombre(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
            try {
           
                String employee = request.getParameter("name");
                R_User_Atencion_Controller rud = new R_User_Atencion_Controller();
                JSONObject o  =  new JSONObject();
                o.put("nombre", employee);
                
                JSONObject data  = rud.atencion_empleado_nombre(o);
                System.out.println("data: " + data); 
                
                 
                
                
                
            response.setContentType("application/json");
            response.getWriter().write(data.toJSONString());
            } catch (Exception e) {
                response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("Sucedio algun error");
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
       // processRequest(request, response);
       String action = request.getParameter("action");
       if(action.equals("chart_incidencia")){
           
           chart_incidencia(request, response);
       }
       else if(action.equals("chart_requerimiento"))
       {
           chart_requerimiento(request, response);
       }
       else if(action.equals("get_all_day"))
       {
           atencion_diaria(request, response);
       }
       else if(action.equals("get_all_employee")){
           atencion_empleado(request, response);
       
       }
        else if(action.equals("employee_atention")){
           atencion_empleado_nombre(request, response);
       
       }
       else if(action.equals("atencion_empresa")){
           chart_atencion_empresa(request, response);
       
       }
       else if(action.equals("atencion_group")){
           chart_grupo(request, response);
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
        //processRequest(request, response);
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

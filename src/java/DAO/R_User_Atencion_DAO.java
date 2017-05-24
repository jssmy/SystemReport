/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




import org.json.simple.*;

/**
 *
 * @author jssmy
 */
public class R_User_Atencion_DAO {
    public static final String URL="jdbc:mysql://127.0.0.1:3306/ebemar_db";
    public static final String USR="root";
    public static final String PASS="root";
    
    
    
    public  JSONObject atencion_empleado() {
        try {
            Connection con = null;
        Statement stmt = null;
        
           Class.forName("com.mysql.jdbc.Driver");
            System.out.println("---------- llama al conector  -----------");
            con = DriverManager.getConnection(URL, USR, PASS);
            System.out.println("---------- realiza conextion con exito  -----------");
            String query ="call atencion_empleado";
            //query+=CodPostal+"'";
            stmt = con.createStatement();
            List<JSONObject> ls = new ArrayList<>();
            
            
            
            JSONObject obj;
            
            
            ResultSet rs= stmt.executeQuery(query);
            
            while(rs.next()){
                obj=new JSONObject();
                obj.put("nombres", rs.getString("nombres"));
                obj.put("requerimiento", rs.getString("requerimiento"));
                obj.put("incidente", rs.getString("incidente"));
                obj.put("url",url(rs.getString("nombres")));
                obj.put("subtotal", rs.getInt("requerimiento") + rs.getInt("incidente"));
                System.out.println("objeto con ur"+ obj);
                
                ls.add(obj);
                        
            }
            
            JSONObject data= new JSONObject();
            data.put("data", ls);
                    
           
                    
            System.out.println("realiza el queri sin problemas");
            return data;
            
        } catch (Exception e) {
            System.out.println("-----ERROR SELECT USER---" + e.toString());
            return null;
        }
        
        
    }
    
    private String url (String asigned)
    {
        String v="";
        if(asigned!=null)
        {
            v= asigned.replace(" ", "+");
            
        }   
        return v;
    }
    
    
    public JSONObject atencion_empleado_nombre(JSONObject o){
    JSONObject obj= new JSONObject();
    JSONArray ls = new JSONArray();
        
        try {
            Connection con = null;
        Statement stmt = null;
        
           Class.forName("com.mysql.jdbc.Driver");
            System.out.println("---------- llama al conector  -----------");
            con = DriverManager.getConnection(URL, USR, PASS);
            System.out.println("---------- realiza conextion con exito  -----------");
            String query ="call atencion_empleado_nombre('"+
                    o.get("nombre")+
                    "')";
            
            stmt = con.createStatement();
            
            System.out.println("quert: "+query);
            
            ResultSet rs= stmt.executeQuery(query);
            
            while(rs.next()){
                obj=new JSONObject();
                obj.put("fecha", rs.getString("fecha"));
                obj.put("requerimiento",rs.getInt("requerimiento"));
                obj.put("incidente",rs.getInt("incidente"));
                obj.put("subtotal",rs.getInt("requerimiento") +rs.getInt("incidente") );
               
                //total+=rs.getInt("cantidad");
                ls.add(obj);
                        
            }
            JSONObject data = new JSONObject();
            data.put("data", ls);   
            //data.put("employee",o.get("nombre"));
            
                    
            System.out.println("realiza el queri sin problemas");
            return data;
            
        } catch (Exception e) {
            System.out.println("-----ERROR SELECT USER---" + e.toString());
            return null;
        }
    
    
    
    
    
    
    
    }
    
    public JSONObject atencion_diaria(){
        JSONObject data= new JSONObject();
       try {
            Connection con = null;
        Statement stmt = null;
        
           Class.forName("com.mysql.jdbc.Driver");
            System.out.println("---------- llama al conector  -----------");
            con = DriverManager.getConnection(URL, USR, PASS);
            System.out.println("---------- realiza conextion con exito  -----------");
            String query ="call atencion_diaria;";
            System.out.println("quert:> "+ query);
            stmt = con.createStatement();
            JSONArray ls = new JSONArray();
            JSONObject obj  = new JSONObject();
            ResultSet rs= stmt.executeQuery(query);
            
            while(rs.next()){
                obj = new JSONObject();
                obj.put("fecha", rs.getString("resuelto"));
                obj.put("requerimiento", rs.getString("requerimiento"));
                obj.put("incidente", rs.getString("incidente"));
             
                obj.put("subtotal", rs.getInt("requerimiento") + rs.getInt("incidente"));
                
                
                ls.add(obj);
            }
            data.put("data", ls);
            
            return data;
            
        } catch (Exception e) {
            System.out.println("-----ERROR SELECT USER---" + e.toString());
            return null;
        }         
       
        
    }
    
    
    public JSONArray chart_empleado(JSONObject o)
    {
        JSONObject obj= new JSONObject();
        //List<JSONObject> ls = new  ArrayList<>();
        JSONArray ls = new JSONArray();
        try {
            Connection con = null;
        Statement stmt = null;
            System.out.println("objeto temporar>" + o);
           Class.forName("com.mysql.jdbc.Driver");
            System.out.println("---------- llama al conector  -----------");
            con = DriverManager.getConnection(URL, USR, PASS);
            System.out.println("---------- realiza conextion con exito  -----------");
            String query ="call ebemar_db.chart_empleado('"+
                    
                    o.get("min")+"','"+
                    o.get("max")+"','"+
                    o.get("tipo")+
                    "');";
            stmt = con.createStatement();
            System.out.println("query:> "+query);

            
            
            ResultSet rs= stmt.executeQuery(query);
    
            while(rs.next()){
                obj=new JSONObject();
                
                obj.put("name", rs.getString("asignado"));
                obj.put("cantidad",rs.getInt("cantidad"));
                
                ls.add(obj);

            }
            
            System.out.println("objeto todo: "+ ls);
            return ls;
            
        } catch (Exception e) {
            System.out.println("-----ERROR SELECT USER---" + e.toString());
            return null;
        }
    
    
    
    
    
    }
    
    
     public JSONArray chart_empleado_empresa(JSONObject o)
    {
        JSONObject obj= new JSONObject();
        //List<JSONObject> ls = new  ArrayList<>();
        JSONArray ls = new JSONArray();
        try {
            Connection con = null;
        Statement stmt = null;
            System.out.println("objeto temporar>" + o);
           Class.forName("com.mysql.jdbc.Driver");
            System.out.println("---------- llama al conector  -----------");
            con = DriverManager.getConnection(URL, USR, PASS);
            System.out.println("---------- realiza conextion con exito  -----------");
            String query ="call ebemar_db.atencion_empleado_empresa('"+
                    
                    o.get("min")+"','"+
                    o.get("max")    +
                    "');";
            stmt = con.createStatement();
            System.out.println("query:> "+query);

            
            
            ResultSet rs= stmt.executeQuery(query);
    
            while(rs.next()){
                obj=new JSONObject();
                
                obj.put("nombre", rs.getString("nombre"));
                obj.put("requerimiento",rs.getInt("requerimiento"));
                obj.put("incidente",rs.getInt("incidente"));
                
                ls.add(obj);

            }
            
            System.out.println("objeto todo: "+ ls);
            return ls;
            
        } catch (Exception e) {
            System.out.println("-----ERROR SELECT USER- empresa --" + e.toString());
            return null;
        }
    
    
    
    
    
    }
    
     public JSONArray chart_grupo(JSONObject o)
    {
        JSONObject obj= new JSONObject();
        //List<JSONObject> ls = new  ArrayList<>();
        JSONArray ls = new JSONArray();
        try {
            Connection con = null;
        Statement stmt = null;
            System.out.println("objeto temporar>" + o);
           Class.forName("com.mysql.jdbc.Driver");
            System.out.println("---------- llama al conector  -----------");
            con = DriverManager.getConnection(URL, USR, PASS);
            System.out.println("---------- realiza conextion con exito  -----------");
            String query ="call ebemar_db.chart_grupo('"+
                    o.get("min")+"','"+
                    o.get("max")    +
                    "');";
            stmt = con.createStatement();
            System.out.println("query:> "+query);

            
            
            ResultSet rs= stmt.executeQuery(query);
    
            while(rs.next()){
                obj=new JSONObject();
                
                obj.put("grupo", rs.getString("grupo"));
                obj.put("requerimiento",rs.getInt("requerimiento"));
                obj.put("incidente",rs.getInt("incidente"));
                
                ls.add(obj);

            }
            
            System.out.println("objeto todo: "+ ls);
            return ls;
            
        } catch (Exception e) {
            System.out.println("-----ERROR SELECT USER- empresa --" + e.toString());
            return null;
        }
    
    
    
    
    
    }
     
     
    
    
    
}

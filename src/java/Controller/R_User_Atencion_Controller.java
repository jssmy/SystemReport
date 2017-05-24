/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import DAO.R_User_Atencion_DAO;
import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.json.simple.*;

/**
 *
 * @author jssmy
 */
public class R_User_Atencion_Controller {
     JSONObject ur;
     List<JSONObject> urs = new ArrayList<>();
    R_User_Atencion_DAO rud= new R_User_Atencion_DAO();
    public R_User_Atencion_Controller() {
      // urs = rud.get_User_Atencion_All();
        
    }
    
    
    public JSONObject atencion_empleado(){
        return rud.atencion_empleado();
    }
    
    public JSONObject atencion_empleado_nombre(JSONObject o)
    {
        return rud.atencion_empleado_nombre(o);
    }
    
    public JSONObject atencion_diaria()
    {
        return rud.atencion_diaria();
       
    }
    
    public JSONArray chart_empleado(JSONObject obj)
    {   
                return rud.chart_empleado(obj);
    }
    
    public JSONArray chart_empleado_empresa(JSONObject obj)
    {   
                return rud.chart_empleado_empresa(obj);
    }
    
    public JSONArray chart_group(JSONObject o){
    
    return rud.chart_grupo(o);
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

//import DAO.UserDAO;

import DAO.UserCon;
import Model.User;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author jssmy
 */
public class UserController {
    List<User> usuarios = null;
    UserCon uc = new UserCon();
    
    
    //EmpleadoController ed = new EmpleadoController();
    //UserDAO ud = new UserDAO();
    crypt cp = new crypt();
    
    public UserController(){
       usuarios = new ArrayList<>();
     ResultSet  rs = uc.getUsers();
        try {
            while(rs.next())
            {
                User u = new User();
                u.setID(rs.getInt("ID"));
                u.setEmail(rs.getString("email"));
                u.setName( rs.getString("name") );
                u.setPassword(rs.getString("pass"));
                u.setLastName(rs.getString("lastname"));
                u.setType(rs.getString("type"));
                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                usuarios.add(u);
                //System.out.println("-----user:"+u.getName());
                
            }
            
            
        } catch (Exception e) {
                System.out.println("---ERROR INICIALIZAR USER CONTROLLER--"+e.toString());

        }
    }
    public void Create()
    {
        User u = new User();
        
        
        
        
    }
    
    public User user(int id)
    {
        return null;
    }
    
    
    
    public User Login(User u)
    {
       // String pass =  cp.Encriptar(u.getPassword());
        //u.setPassword(pass);
        for(int i=0; i<usuarios.size(); i++){
            User usr = usuarios.get(i);
            if(usr.getEmail().equals(u.getEmail())  && usr.getPassword().equals(u.getPassword()))
            {
                return usr;
            }
        }
       
       
       
        return null;
    }
    
    
}

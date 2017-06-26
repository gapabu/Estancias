/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Padilla_Bustamante
 */
public class ConexionBD {
    String driver;
    String url;
    String user;
    String pass;
    
    public ConexionBD(){
        driver = "com.mysql.jdbc.Driver";
        url = "jdbc:mysql://localhost:3306/Estancias";
        user = "root";
        pass = "ouat";
    }
    //se verifica que el usuario sea correcto
    public void Conect(String query){
        Connection conn=null;
        PreparedStatement pst;
        ResultSet rs;
        
        try{
            Class.forName(this.driver);
            conn = (Connection)DriverManager.getConnection(this.url, this.user, this.pass);
            pst =(PreparedStatement) conn.createStatement();
            pst.executeUpdate(query);
            conn.close();
        }
        catch(Exception e){
            
        }
        
    }
    
    //se verifica que el usuario sea correcto
    public int loguear(String us, String password){
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;
        int nivel = 0;
        String sql = "select Nivel from Usuarios where Usuario ='"+ us +"'and pass ='"+ password+"'";
        try{
            Class.forName(this.driver);
            conn = DriverManager.getConnection(this.url, this.user, this.pass);
            pst = (PreparedStatement) conn.prepareStatement(sql);
            rs = (ResultSet) pst.executeQuery();
            
            while(rs.next()){
                nivel = rs.getInt(1);
            }
            
            conn.close();
        }
        catch(Exception e){
            
        }
        return nivel;
    }
    
    
    
    
}

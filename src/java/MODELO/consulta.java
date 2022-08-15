/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
public class consulta {
    
    String driver;
     String url;
     String uss;
     String contra;
     
     public consulta(){
         driver="oracle.jdbc.OracleDriver";
         url="jdbc:oracle:thin:@localhost:1521:XE";
         uss="educacion";
         contra="educacion";
     }
    
private Connection cnn;
    private Statement st;
      
    
    public int Autentication(String usuario,String clave) {
        
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;
        int nivel=0;
        String sql = "select nivel from usuario where nickusuario='"+usuario+"' and passwordusuario='"+clave+"'";
        try{
            Class.forName(this.driver);
            conn = DriverManager.getConnection(
            this.url,
            this.uss,
            this.contra
            
            );
                 
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                nivel = rs.getInt(1);
                
            }
            conn.close();
            
        }catch (ClassNotFoundException | SQLException e){
            
        }
        
        return nivel;
    }

    
}

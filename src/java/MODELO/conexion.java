/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Derick
 */
public class conexion {
    
     public java.sql.Connection cnn;
    
    public conexion() throws SQLException 
{
    try {
        //para coneccion
        Class.forName("oracle.jdbc.OracleDriver");   // Driver bd
        cnn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","educacion","educacion");  //url - usuario -password
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
    
}

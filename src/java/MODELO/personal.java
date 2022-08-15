/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Derick
 */
public class personal {
    
    Integer idpersona;
    String nombre;
    String apellido;
    String mailpersona;
    String cedula;
    Connection cnn;
    Statement state;  
    ResultSet rs;
    
    public personal()
    {
         try{
            Class.forName("oracle.jdbc.OracleDriver");
            
            cnn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","educacion","educacion");
        }catch (ClassNotFoundException ex){
            Logger.getLogger(personal.class.getName()).log(Level.SEVERE,null,ex);
        }catch(SQLException ex){
            Logger.getLogger(personal.class.getName()).log(Level.SEVERE,null,ex);
            
        }
       
     }

    public personal(Integer idpersona, String nombre, String apellido, String mailpersona, String cedula) {
        this.idpersona = idpersona;
        this.nombre = nombre;
        this.apellido = apellido;
        this.mailpersona = mailpersona;
        this.cedula = cedula;
    }
    
    
    public boolean insertar() {
        try {
            String query="INSERT INTO educacion.PERSONA (nombre,  apellido, mailpersona, cedula)" +
"values ('"+nombre +"', '"+apellido +"','"+mailpersona+"', '"+cedula+"')";
            int saber=0;
            
            state=cnn.createStatement();
            saber=state.executeUpdate(query);
            
            if(saber==1){
                return true;
               
            }
            
            } catch (SQLException ex) {
            Logger.getLogger(personal.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    

    public Integer getIdpersona() {
        return idpersona;
    }

    public void setIdpersona(Integer idpersona) {
        this.idpersona = idpersona;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

   
    public String getMailpersona() {
        return mailpersona;
    }

    public void setMailpersona(String mailpersona) {
        this.mailpersona = mailpersona;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    
    
    
}

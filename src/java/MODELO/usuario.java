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
public class usuario {
    
    Integer idusuario;
    Integer idpersona;
    String nickusuario;
    String passwordusuario;
    String estadousuario;
    String nivel;
    
    Connection cnn;
    Statement state;  
    ResultSet rs;
    
    
    public usuario()
    {
         try{
            Class.forName("oracle.jdbc.OracleDriver");
            
            cnn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","educacion","educacion");
        }catch (ClassNotFoundException ex){
            Logger.getLogger(usuario.class.getName()).log(Level.SEVERE,null,ex);
        }catch(SQLException ex){
            Logger.getLogger(usuario.class.getName()).log(Level.SEVERE,null,ex);
            
        }
       
     }

    public usuario(Integer idusuario, Integer idpersona, String nickusuario, String passwordusuario, String estadousuario, String nivel) {
        this.idusuario = idusuario;
        this.idpersona = idpersona;
        this.nickusuario = nickusuario;
        this.passwordusuario = passwordusuario;
        this.estadousuario = estadousuario;
        this.nivel = nivel;
    }

   




public boolean insertar() {
        try {
            String query="INSERT INTO educacion.USUARIO (idpersona, nickusuario, passwordusuario)"+
"values ('"+idpersona +"', '"+nickusuario+"', '"+passwordusuario+"')";
            int saber=0;
            
            state=cnn.createStatement();
            saber=state.executeUpdate(query);
            
            if(saber==1){
                return true;
               
            }
            
            } catch (SQLException ex) {
            Logger.getLogger(usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }


public boolean insert() {
        try {
            String query="INSERT INTO educacion.USUARIO (idpersona, nickusuario, passwordusuario,estadousuario,nivel)"+
"values ('"+idpersona +"', '"+nickusuario+"', '"+passwordusuario+"', '"+estadousuario+"', '"+nivel+"')";
            int saber=0;
            
            state=cnn.createStatement();
            saber=state.executeUpdate(query);
            
            if(saber==1){
                return true;
               
            }
            
            } catch (SQLException ex) {
            Logger.getLogger(usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

public boolean actualizar()
    {   
        try {
        int saber=0;
        String query="update usuario set idpersona='"+idpersona+"',nickusuario='"+nickusuario+"',passwordusuario='"+passwordusuario+"',estadousuario='"+estadousuario+"',nivel='"+nivel+"'"
                + "where idusuario='"+idusuario+"'";
        
        state=cnn.createStatement();
        saber=state.executeUpdate(query);
        
        if (saber==1)
        {
            return true;
        }
        } catch (SQLException ex) {
            Logger.getLogger(usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    

    public Integer getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(Integer idusuario) {
        this.idusuario = idusuario;
    }

    public Integer getIdpersona() {
        return idpersona;
    }

    public void setIdpersona(Integer idpersona) {
        this.idpersona = idpersona;
    }

    public String getNickusuario() {
        return nickusuario;
    }

    public void setNickusuario(String nickusuario) {
        this.nickusuario = nickusuario;
    }

    public String getPasswordusuario() {
        return passwordusuario;
    }

    public void setPasswordusuario(String passwordusuario) {
        this.passwordusuario = passwordusuario;
    }

    public String getEstadousuario() {
        return estadousuario;
    }

    public void setEstadousuario(String estadousuario) {
        this.estadousuario = estadousuario;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

  

    
}

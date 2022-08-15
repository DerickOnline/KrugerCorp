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
public class personal2 {
    
    Integer idpersona;
    String nombre;
    String apellido;
    String mailpersona;
    String cedula;
    String fecha;
    String movilpersona;
    String vacuna;
    String tvacuna;
    String fvacuna;
    String nvacuna;
    String direccion;
    Connection cnn;
    Statement state;  
    ResultSet rs;
    
    public personal2()
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

    public personal2(Integer idpersona, String nombre, String apellido, String mailpersona, String cedula,String fecha, String movilpersona,
                     String vacuna, String tvacuna, String fvacuna,String nvacuna, String direccion) {
        this.idpersona = idpersona;
        this.nombre = nombre;
        this.apellido = apellido;
        this.mailpersona = mailpersona;
        this.cedula = cedula;
        this.fecha = fecha;
        this.vacuna = vacuna;
        this.tvacuna = tvacuna;
        this.fvacuna = fvacuna;
        this.nvacuna = nvacuna;
        this.direccion = direccion;
    }
    
    
    public boolean insertar() {
        try {
            String query="INSERT INTO educacion.PERSONA (nombre,  apellido, mailpersona, cedula,fecha,vacuna,tvacuna,fvacuna,nvacuna,direccion)" +
"values ('"+nombre +"', '"+apellido +"','"+mailpersona+"', '"+cedula+"', '"+fecha +"', '"+vacuna +"', '"+tvacuna +"', '"+fvacuna +"', '"+nvacuna +"', '"+direccion +"')";
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

   public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    public String getMovilpersona() {
        return movilpersona;
    }

    public void setMovilpersona(String movilpersona) {
        this.movilpersona = movilpersona;
    }
    
    public String getVacuna() {
        return vacuna;
    }

    public void setVacuna(String vacuna) {
        this.vacuna = vacuna;
    }
    
    public String getTvacuna() {
        return tvacuna;
    }

    public void setTvacuna(String tvacuna) {
        this.tvacuna = tvacuna;
    }
    
     public String getFvacuna() {
        return fvacuna;
    }

    public void setFvacuna(String fvacuna) {
        this.fvacuna = fvacuna;
    }
    
     public String getNvacuna() {
        return nvacuna;
    }

    public void setNvacuna(String nvacuna) {
        this.nvacuna = nvacuna;
    }
    
     public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
}

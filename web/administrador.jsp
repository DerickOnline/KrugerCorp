<%-- 
    Document   : administrador
    Created on : 13/08/2022, 19:14:22
    Author     : Derick
--%>

<%@page import="java.sql.*"%>
<%@page import="MODELO.personal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Administrador</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/alertify.css">
        <link rel="stylesheet" type="text/css" href="css/themes/default.css">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/alertify.js"></script>
        <script src="js/notify.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet">
    </head>
    <body>
        
        <header>
  <nav class="navbar navbar-inverse navbar-static-top center" role="navigation"> 

   <div class="container">
    <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navegacion" aria-expended="false" aria-controls="navbar">
      <span class="sr-only">Ocultar</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
     </button>
     <a href="#" class="navbar-brand">LED-MIND</a> 
    </div>

    

    <div class="collapse navbar-collapse" id="navegacion"> 

     <ul class="nav navbar-nav">
      
      <li class="active"><a href="inicio.jsp">Inicio</a></li>

      <li class="dropdown">

       <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expended="false">
       Mantenimiento
       <span class="caret"></span>
       </a>

       <ul class="dropdown-menu" role="menu">
        <li><a href="administrador.jsp">Usuario#1</a></li>
        <li><a href="administrador2.jsp">Usuario#2</a></li>
       </ul>

      </li>
      
      <li class="active"><a href="reporte1.jsp">Generar Reporte</a></li>
      
      <li  style="margin-left: 500px;"class="active"><a href="login.jsp">Cerrar Sesion</a></li>
     </ul> 

     

    </div>
   </div>
  </nav>
 </header>
        
        <section class="jumbotron">
  <div class="container">
   <h1>ADMINISTRADOR</h1>
   <p>Bienvenido:${sessionScope.usuario}</p>
  </div>
 </section>
        
        <div class="container">
                
            <table class="table table-bordered">
            
                
                
            <thead>
                <tr bgcolor="#eef5f5">
                    <th colspan="8"><h2>Mantenimiento de Usuarios</h2></th>
                    
                    <th><a href="ingreso.jsp">
                            <img src="imagenes/registrar.jpg" width="50" height="50"></a> 
                            
                    </th>
                </tr>
            
                    
                <tr>
                   
                    <th>CODIGO</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO</th>
                    <th>FECHA NACIMIENTO</th>
                    <th>CEDULA</th>
                    <th>EMAIL</th>
                    <th>TELEFONO/MOVIL</th>
                    <th>ESTADO VACUNADO</th>
                    <th>TIPO VACUNA</th>
                    <th>FECHA VACUNA</th>
                    <th>NUMERO DOSIS</th>
                    <th>DIRECCION</th><th>Accion</th>
                    
                        
                </tr>
            </thead>
            <%
           Connection cnx=null;
           Statement sta=null;
           ResultSet rs=null;
           
try{
    Class.forName("oracle.jdbc.OracleDriver");
            cnx=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","educacion","educacion");
            
            sta=cnx.createStatement();
            
            rs=sta.executeQuery("Select * from persona");
            
            while(rs.next()){
                %>
                <tbody>
                 <tr>
                 <td><%=rs.getInt(1)%></td>
                 <td><%=rs.getString(2)%></td>
                 <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(10)%></td>
                    <td><%=rs.getString(11)%></td>
                    <td><%=rs.getString(12)%></td>
                    <th>
                        <a href="editar.jsp?idpersona=<%=rs.getInt(1)%>" >
                        <img src="imagenes/editar.jpg" width="35" height="35"></a> ||
                        
                        <a href="eliminar.jsp?idpersona=<%=rs.getInt(1)%>" >
                        <img src="imagenes/eliminar.jpg" width="35" height=35>
                        </a>
                    </th>
                    
            </tr>
               <%
            }
sta.close();
rs.close();
cnx.close();
            
}catch(Exception e){}
           
           %> 
            
                
                </tbody>
        </table>
</div>
                
        <br>
        <br>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>

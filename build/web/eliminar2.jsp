<%-- 
    Document   : eliminar
    Created on : 13/08/2022, 12:40:36
    Author     : Derick
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
        int idusuario=Integer.parseInt(request.getParameter("idusuario"));
        
        Connection cnx=null;
        ResultSet rs=null;
        Statement sta=null;
        try{
            Class.forName("oracle.jdbc.OracleDriver");
            cnx=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","educacion","educacion");
            
            sta=cnx.createStatement();
            
            sta.executeUpdate("delete from usuario where idusuario='"+idusuario+"'");
            request.getRequestDispatcher("administrador2.jsp").forward(request, response);
            
            sta.close();
            rs.close();
            cnx.close();
            
        }catch(Exception e){out.print(e+"");}
        
        
        %>
    </body>
</html>

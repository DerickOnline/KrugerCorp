<%-- 
    Document   : editar2
    Created on : 13/08/2022, 18:22:35
    Author     : Derick
--%>
<%@page import="java.sql.*"%>
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
    <script>
    $(document).ready(function validarpersona1 () {
            $('#usuario').click(function (){
                
var idpersona,nickusuario,passwordusuario,estadousuario,nivel,expresion,letras;
idpersona = document.getElementById("persona").value;
nickusuario = document.getElementById("nick").value;
passwordusuario = document.getElementById("password").value;
estadousuario = document.getElementById("estado").value;
nivel = document.getElementById("nivel").value;


expresion=/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
letras=/^[a-zA-ZÑñÁáÉéÍíÓóÚúÜü\s]+$/;

if(idpersona==="" ||nickusuario===""||passwordusuario===""){
 alertify.error("Todos los campos son obligatorios"); 
 return false;
}
if(idpersona==="Seleccione Cuenta"){
 alertify.error("Seleccione una Cuenta"); 
 return false;
}

  if(estadousuario==="Estado"){
 alertify.error("Seleccione el Estado"); 
 return false;
}
if(nivel==="Nivel"){
 alertify.error("Seleccione el Nivel"); 
 return false;
}


            });
})
</script>

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
      
      <li class="active"><a href="administrador2.jsp">Regresar</a></li>

      
      <li  style="margin-left: 800px;"class="active"><a href="login.jsp">Cerrar Sesion</a></li>
      
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
   <%
        int idusuario=Integer.parseInt(request.getParameter("idusuario"));
        
           Connection cnx=null;
           Statement sta=null;
           ResultSet rs2=null;
           
try{
    Class.forName("oracle.jdbc.OracleDriver");
            cnx=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","educacion","educacion");
            
            sta=cnx.createStatement();
            
            rs2=sta.executeQuery("Select * from usuario where idusuario='"+idusuario+"'");
            
            while(rs2.next()){
        
        %>
        
  
    
    <div class="container">
        <h2>Editar Usuario</h2>
        <form class="" action="ActUsuario" method="POST" onsubmit="return validarpersona1();" >
            <div class="col-xs-2">
            <input type="text"  class="form-control" placeholder="Codigo"  name="codigo" id="codigo" readonly="readonly" value="<%=rs2.getInt(1)%>" />
        </div>
        <br>
        <br>
        <div class="col-xs-3">
            <label><select class="btn btn-default" name="persona" id="persona">
                                <option values="0" disabled selected>Seleccione Cuenta</option>
                                <%
                                    try
                                    {
                                    Class.forName("oracle.jdbc.OracleDriver");
                                    Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "educacion", "educacion");
                                    Statement st = cn.createStatement();
                                    ResultSet rs1 = st.executeQuery("SELECT IDPERSONA,NOMBRE,APELLIDO FROM PERSONA");
                                    while (rs1.next()) 
                                    {
                                %>
                                <option value="<%=rs1.getInt("IDPERSONA")%>"><%=rs1.getString("NOMBRE")%> <%=rs1.getString("APELLIDO")%></option>
                                <%
                                }
                                 cn.close();
                                 rs1.close();
                                }

                              catch (Exception ex){
                               
                                  ex.printStackTrace();

                                 } 
                                    %>
                                                              
                              
                            </select>
            </label>
                                    </div>
        <br>
        <br>
        <div class="col-xs-3">
            <input type="text"  class="form-control" placeholder="Nick"  name="nick" id="nick" value="<%=rs2.getString(3)%>" />
        </div>
      <br>
      <br>
      <div class="col-xs-3">
            <input type="text" class="form-control" placeholder="Password"  name="password" id="password" value="<%=rs2.getString(4)%>" />
        </div>
      <br>
      <br>
      
      <div class="col-xs-2">
            <select name="estado" id="estado" class="form-control">
            <option  disabled selected>Estado</option>
  <option value="A">Activo</option>
  <option value="I">Inactivo</option>
</select>
            </div>
      
      <div class="col-xs-2">
            <select name="nivel" id="nivel" class="form-control">
            <option disabled selected>Nivel</option>
  <option value="2">Administrador</option>
  <option value="1">Estudiante</option>
</select>
            </div>
        
      <br>
      <br>
      <br>
     
        <input style="margin-left:  17px;" id="usuario"  type="submit"  class="btn btn-primary" value="Editar Usuario" />
      
      
     <br>
                <br>
</form>
                </div>
     <%
                }
}catch(Exception e){}




                %>
    </body>
</html>


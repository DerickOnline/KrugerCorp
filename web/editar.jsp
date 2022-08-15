<%-- 
    Document   : editar
    Created on : 13/08/2022, 13:42:24
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
    $(document).ready(function validarpersona () {
            $('#persona').click(function (){
                
var nombre,apellido,fecha,email,telefono,cedula,vacuna,tvacuna,fvacuna,nvacuna,direccion,expresion,letras;
nombre = document.getElementById("nombre").value;
apellido = document.getElementById("apellido").value;
fecha = document.getElementById("fecha").value;
email = document.getElementById("email").value;
telefono = document.getElementById("telefono").value;
cedula = document.getElementById("cedula").value;
vacuna = document.getElementById("vacuna").value;
tvacuna = document.getElementById("tvacuna").value;
fvacuna = document.getElementById("fvacuna").value;
nvacuna = document.getElementById("nvacuna").value;
direccion = document.getElementById("direccion").value;

expresion=/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
letras=/^[a-zA-ZÑñÁáÉéÍíÓóÚúÜü\s]+$/;

if(nombre==="" ||apellido===""||fecha===""||email===""||telefono===""||cedula===""|| tvacuna===""||fvacuna===""||nvacuna===""|| direccion===""){
 alertify.error("Todos los campos son obligatorios"); 
 return false;
}

 else if(!letras.exec(nombre)){
      alertify.error ("El campo Nombre solo aceptan letras y espacios en blanco");
      return false;
  }
  else if(!letras.exec(apellido)){
      alertify.error ("El campo Apellido solo aceptan letras y espacios en blanco");
      return false;
  } 
  else if(!expresion.test(email)){
       alertify.error("El email no es valido");
       return false;
   } 
   else if (telefono.length>10){
      alertify.error("Numero telefonico incorrecto");
       return false;
  }
  else if (cedula.length>10){
      alertify.error("Cedula incorrecto");
       return false;
  }
  else if (isNaN(telefono)){
      alertify.error("Telefono Solo Acepta Numeros");
       return false;
  }
  if(vacuna==="Seleccione Estado Vacunado"){
 alertify.error("Seleccione Estado Vacunado"); 
 return false;
}
else if(!letras.exec(tvacuna)){
      alertify.error ("El campo Tipo Vacuna solo aceptan letras y espacios en blanco");
      return false;
  }
  else if (nvacuna.length>12){
      alertify.error("Numero Dosis incorrecto");
       return false;
  }
else if(!letras.exec(direccion)){
      alertify.error ("El campo Direccion solo aceptan letras y espacios en blanco");
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
      
      <li class="active"><a href="administrador.jsp">Regresar</a></li>

      
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
        int idpersona=Integer.parseInt(request.getParameter("idpersona"));
        
           Connection cnx=null;
           Statement sta=null;
           ResultSet rs=null;
           
try{
    Class.forName("oracle.jdbc.OracleDriver");
            cnx=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","educacion","educacion");
            
            sta=cnx.createStatement();
            
            rs=sta.executeQuery("Select * from persona where idpersona='"+idpersona+"'");
            
            while(rs.next()){
        
        %>
        
        <div class="container">
        <h2>Editar Usuario</h2>
        <form action="" class="" method="POST" onsubmit="return validarpersona();" >
        <div class="col-xs-2">
            <input type="text"  class="form-control" placeholder="Codigo"  name="codigo" id="codigo" readonly="readonly" value="<%=rs.getInt(1)%>" />
        </div>
        <br>
        <br>
        <div class="col-xs-3">
            <input type="text" onkeyup = "this.value=this.value.toUpperCase()" class="form-control" placeholder="Nombre"  name="nombre" id="nombre" value="<%=rs.getString(2)%>" />
        </div>
        <div class="col-xs-3">
            <input type="text" onkeyup = "this.value=this.value.toUpperCase()" class="form-control" placeholder="Apellido"  name="apellido" id="apellido" value="<%=rs.getString(3)%>" />
        </div>       
                        <br>
        <br>
    <div class="col-xs-3">
        <input type="date" class="form-control" name="fecha" id="fecha" placeholder="Fecha" value="<%=rs.getString(4)%>">
</div>
                       <div class="col-xs-3">
            <input type="text" class="form-control" name="email" id="email" placeholder="Email" value="<%=rs.getString(5)%>">
</div>
                    
                        <br>
        <br>
    <div class="col-xs-3">
        <input type="text" class="form-control" name="telefono" id="telefono" placeholder="Telefono" value="<%=rs.getString(6)%>">
</div>
                    
<div class="col-xs-3">
        <input type="text" class="form-control" name="cedula" id="cedula" placeholder="Cedula" value="<%=rs.getString(7)%>">
</div>
        <br>
        <br>
                    
                        <div class="col-xs-3">
            <select name="vacuna" id="vacuna" class="form-control">
            <option disabled selected>Seleccione Estado Vacunado</option>
  <option value="SI">Vacunado</option>
  <option value="NO">No Vacunado</option>
</select>
            </div>
         <div class="col-xs-3">
            <input type="text" onkeyup = "this.value=this.value.toUpperCase()" class="form-control" placeholder="Tipo Vacuna"  name="tvacuna" id="tvacuna" value="<%=rs.getString(9)%>" />
        </div>

        <br>
        <br>
        
         <div class="col-xs-3">
        <input type="date" class="form-control" name="fvacuna" id="fvacuna" placeholder="Fecha Vacuna" value="<%=rs.getString(10)%>">
</div>
        <div class="col-xs-3">
        <input type="text" class="form-control" name="nvacuna" id="nvacuna" placeholder="Numero Dosis" value="<%=rs.getString(11)%>">
</div>
          <br>
        <br>

        <br>
        <br>
        <div class="col-xs-6">
        <input type="text" onkeyup = "this.value=this.value.toUpperCase()" class="form-control" name="direccion" id="direccion" placeholder="Direccion" value="<%=rs.getString(12)%>">
</div>
        <br>
        <br>
        <br>
        
        <input style="margin-left:  17px;" id="persona" name="editar" type="submit"  class="btn btn-primary" value="Editar Usuario" />

                <br>
                <br>
</form>
                </div>
                <%
                }
}catch(Exception e){}

if(request.getParameter("editar")!=null){

int codigo=Integer.parseInt(request.getParameter("codigo"));
String nombre=request.getParameter("nombre");
String apellido=request.getParameter("apellido");
String fecha=request.getParameter("fecha");
String email=request.getParameter("email");
String telefono=request.getParameter("telefono");
String cedula=request.getParameter("cedula");
String vacuna=request.getParameter("vacuna");
String tvacuna=request.getParameter("tvacuna");
String fvacuna=request.getParameter("fvacuna");
String nvacuna=request.getParameter("nvacuna");
String direccion=request.getParameter("direccion");

sta.executeUpdate("update persona set nombre='"+nombre+"',  apellido='"+apellido+"', fecha='"+fecha+"', mailpersona='"+email
+"',movilpersona='"+telefono+"', cedula='"+cedula+"', vacuna='"+vacuna+"', tvacuna='"+tvacuna+"', fvacuna='"+fvacuna+"', nvacuna='"+nvacuna+"',direccion='"+direccion+"' where idpersona='"+codigo+"'");

request.getRequestDispatcher("administrador.jsp").forward(request, response);

}

                %>
    </body>
</html>

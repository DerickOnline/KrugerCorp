<%-- 
    Document   : login
    Created on : 13/08/2022, 19:04:02
    Author     : Derick
--%>
<%@page import="MODELO.consulta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>LOGIN</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/alertify.css">
        <link rel="stylesheet" type="text/css" href="css/themes/default.css">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/alertify.js"></script>
        <script src="js/notify.js"></script>
        <script src="js/validarpersona.js.js"></script>
       <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        
    </head>
    <body>
        
            <script type="text/javascript">
            
            $(document).ready(function validarlogin () {
            $('#ejecuta').click(function (){
                
                
var usuario,clave,expresion,letras;
usuario = document.getElementById("usuario").value;
clave = document.getElementById("clave").value;

expresion=/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
letras=/^[a-zA-ZÑñÁáÉéÍíÓóÚúÜü\s]+$/;

if(usuario==="" ||clave===""){
       alertify.error("Campos Obligatorios");
 return false;
}
  
  else if(!letras.exec(usuario)){
      alertify.error("El campo Usuario solo aceptan letras y espacios en blanco");
      return false;
 
            
}

 

});
})
</script>

<script>
    $(document).ready(function validarpersona () {
            $('#persona').click(function (){
                
var nombre,apellido,email,cedula,expresion,letras;
nombre = document.getElementById("nombre").value;
apellido = document.getElementById("apellido").value;
email = document.getElementById("email").value;
cedula = document.getElementById("cedula").value;

expresion=/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
letras=/^[a-zA-ZÑñÁáÉéÍíÓóÚúÜü\s]+$/;

if(nombre==="" ||apellido===""||email===""||cedula===""){
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
   else if (cedula.length>10){
      alertify.error("Cedula incorrecto");
       return false;
  }
  

            });
})
</script>

<script>
    $(document).ready(function validarpersona1 () {
            $('#modal').click(function (){
                
var idpersona,nickusuario,passwordusuario,expresion,letras;
idpersona = document.getElementById("idpersona").value;
nickusuario = document.getElementById("nick").value;
passwordusuario = document.getElementById("password").value;


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

  

            });
})
</script>

    <center>
          
        <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
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
      <li class="active"><a href="#">Sobre Nosotros</a></li>
     </ul>
                  <form action="validacion" method="POST" class="navbar-form navbar-right" role="search" onsubmit="return validarlogin();" >
                
                <div class="form-group">
                    <input type="text" class="form-control" placeholder=" Usuario" name="usuario" id="usuario" value="" />
                </div>

                <div class="form-group">
                    <input type="password" class="form-control" placeholder=" Contraseña" name="clave" id="clave" value="" />
                </div>


                <input type="submit" id="ejecuta" name="persona" class="btn btn-primary" value="Iniciar Sesion" />
            </form>
        </div>
              </div>
        </nav>
        
        </center>
    
    
    <section class="jumbotron">
        <div class="container">
   <h1>Bienvenido</h1>
   <p>Si se puede IMAGINAR se puede PROGRAMAR </p>
  </div>
 </section>

    <form action="RegPersonal" class="" method="POST" onsubmit="return validarpersona();" >    
    <div class="container">
        <h2>Crea una Cuenta</h2>
         <div class="col-xs-3">
        <input type="text" class="form-control" name="cedula" id="cedula" placeholder="Cedula" value="">
</div>
        <div class="col-xs-3">
            <input type="text" onkeyup = "this.value=this.value.toUpperCase()"  class="form-control" placeholder="Nombre"  name="nombre" id="nombre" value="" />
        </div>
        <br>
        <br>
        <div class="col-xs-3">
            <input type="text" onkeyup = "this.value=this.value.toUpperCase()" class="form-control" placeholder="Apellido"  name="apellido" id="apellido" value="" />
        </div>       
            
                           <div class="col-xs-3">
            <input type="text" class="form-control" name="email" id="email" placeholder="Email" value="">
</div>
                    
                        <br>
        <br>
   
                    
        <br>
        
        <input style="margin-left:  17px;" id="persona"  type="submit"  class="btn btn-primary" value="Crear Cuenta" />
        
        
    </div>
        
       
    </form>
    
    
    
    <input  style="margin-left:  250px; margin-top:   -55px;" data-toggle="modal" data-target="#Registrar" type="submit"  class="btn btn-primary " value="Registrate" />
        
        <div class="modal fade" id="Registrar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <form  action="RegUsuario" method="POST" onsubmit="return validarpersona1();">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Registrate</h4>
			</div>
                    <br>
                    
                    <div class="modal-body">
        <div class="col-xs-3">
            <label><select class="btn btn-default" name="idpersona" id="idpersona">
                                <option disabled selected>Seleccione Cuenta</option>
                                <%
                                    try
                                    {
                                    Class.forName("oracle.jdbc.OracleDriver");
                                    Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "educacion", "educacion");
                                    Statement st = cn.createStatement();
                                    ResultSet rs = st.executeQuery("SELECT IDPERSONA,NOMBRE,APELLIDO FROM PERSONA");
                                    while (rs.next()) 
                                    {
                                %>
                                <option value="<%=rs.getInt("IDPERSONA")%>"><%=rs.getString("NOMBRE")%> <%=rs.getString("APELLIDO")%></option>
                                <%
                                }
                                 cn.close();
                                 rs.close();
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
            <input type="text"  class="form-control" placeholder="Nick"  name="nick" id="nick" value="" />
        </div>
      <br>
      <br>
      <div class="col-xs-3">
            <input type="password" class="form-control" placeholder="Password"  name="password" id="password" value="" />
        </div>
        
      <br>
      <br>
      
      
      
    </div>
			
                    <div class="modal-footer">
                        <input  id="modal"  type="submit"  class="btn btn-primary" value="Registrar Cuenta" />
      
      <input  data-dismiss="modal"  type="submit"  class="btn btn-default" value="Cerrar" />
      
                    </div>
                    
		</div>
	</div>
                </form>
</div>                               
    

    <br>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </body>
</html>



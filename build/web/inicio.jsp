<%-- 
    Document   : inicio
    Created on : 13/08/2022, 15:45:03
    Author     : Derick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Administrador</title>
          <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
  
  
  <div class="container">
      <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
          <div class="row">
              <div class="hidden-xs col-sm-3 col-md-6 col-lg-6">
  
                  <a href="http://localhost:8080/educacion/administrador.jsp?"><img src="imagenes/usuarios.jpg" class="img-responsive img-thumbnail"></a>
              </div>
              <div class="col-xs-12 col-sm-9 col-md-6 col-lg-6">
                  
                  <h3>Mantenimiento de Usuarios</h3>
                  <p align="justify">Vizualizacion de los Usuarios Registrados en Nuestros Cursos</p>
              </div>
          </div>
          </div>
  
      
     
  </div>
  
      
      
      
     
  
  <br>
  <br>
    </body>
</html>

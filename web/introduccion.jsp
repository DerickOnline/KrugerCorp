<%-- 
    Document   : introduccion
    Created on : 13/08/2022, 19:10:52
    Author     : Derick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Estudiante</title>
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
      
      <li class="active"><a href="introduccion.jsp">Inicio</a></li>

      
      
      <li  style="margin-left: 800px;"class="active"><a href="login.jsp">Cerrar Sesion</a></li>
     </ul> 

     

    </div>
   </div>
  </nav>
 </header>
        
        <section class="jumbotron">
  <div class="container">
   <h1>ESTUDIANTE</h1>
   <p>Bienvenido:${sessionScope.usuario}</p>
  </div>
 </section>
  
  
  <div class="container">
      <h2>Elige El Curso que Deseas Realizar</h2>
      
  </div>
  <br>
  <br>
  
  <div class="container">
      <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
          <div class="row">
              <div class="hidden-xs col-sm-3 col-md-6 col-lg-6">
  
                  <a href="programacion.jsp"><img src="imagenes/programacion.jpg" class="img-responsive img-thumbnail"></a>
              </div>
              <div class="col-xs-12 col-sm-9 col-md-6 col-lg-6">
                  
                  <h3>Programacion Orientada a Objetos</h3>
                  <p align="justify">Realizaremos un Test sobre los Lenguajes que mas Utilizas o Conoces</p>
              </div>
          </div>
          </div>
  
      
      <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
          <div class="row">
              <div class="hidden-xs col-sm-3 col-md-6 col-lg-6">
  
                  <a href="sistemas.jsp"><img src="imagenes/sistema operativos.jpg" class="img-responsive img-thumbnail"></a>
              </div>
              <div class="col-xs-12 col-sm-9 col-md-6 col-lg-6">
                  
                  <h3>Sistemas Operativos</h3>
                  <p align="justify">Realizaremos un Test sobre que Sistemas Operativo mas es de tu Agrado o Conveniencia</p>
              </div>
          </div>
          </div>
      
      
      
      <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
          <div class="row">
              <div class="hidden-xs col-sm-3 col-md-6 col-lg-6">
  
                  <a href="informatica.jsp"><img src="imagenes/Informatica.jpg" class="img-responsive img-thumbnail"></a>
              </div>
              <div class="col-xs-12 col-sm-9 col-md-6 col-lg-6">
                  
                  <h3>Informatica</h3>
                  <p align="justify">Realizaremos un Test sobre la informacion que tienes al respecto de las Computadoras</p>
              </div>
          </div>
          </div>
  </div>
  
  <br>
  <br>
  
    </body>
</html>

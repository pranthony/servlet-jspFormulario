<%-- 
    Document   : resultado
    Created on : 27 ago. 2021, 9:46:01
    Author     : prantony
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SENATI</title>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
    <link rel="stylesheet" href="style.css">

  </head>
  <body>
      
    <!-- Start Top Bar -->
    <div class="top-bar">
      <div class="top-bar-left">
        <ul class="menu flex-container">
          <li class="menu-text">Botz</li>
          <li><a href="#">Inicio</a></li>
          <li><a href="#">Products</a></li>
          <li><a href="htmltemplates.jsp">Otras encuestas</a></li>
        </ul>
      </div>
    </div>
    <!-- End Top Bar -->

    <div class="callout large primary">
      <div class="row column text-center">
        <h1>Encuesta personal</h1>
        <h2 class="subheader">Reporte</h2>
      </div>
    </div>
    <!-- We can now combine rows and columns when there's only one column in that row -->
    <div class="row medium-8 large-7 columns">

            
<div class="row">
  <div class="columns">
    <ul class="accordion" data-accordion data-allow-all-closed="true">
  <li class="accordion-item is-active" data-accordion-item>
    <a href="#" class="accordion-title">Informacion personal</a>
    <div class="accordion-content" data-tab-content >
        <p><strong>Nombres</strong> : ${ayudante.datos.name}</p>
        <p><strong>Email</strong>   : ${ayudante.datos.email}</p>
        <p><strong>Edad</strong>    : ${ayudante.datos.age}</p>
      <p><strong>Pais</strong>    : ${ayudante.datos.genero}</p>
      <a href="#"></a>
    </div>
  </li>
  <li class="accordion-item" data-accordion-item>
    <a href="#" class="accordion-title">Informacion de desarrollador</a>
    <div class="accordion-content" data-tab-content>
            <p><strong>Perfil</strong>  : ${ayudante.datos.level}</p>
            <p><strong>Lenguaje de programacion:</strong>
                    ${ayudante.datos.languages}
                </p>
    </div>
  </li>
  <li class="accordion-item" data-accordion-item>
    <a href="#" class="accordion-title">Comentarios</a>
    <div class="accordion-content" data-tab-content>
      <p>${ayudante.datos.comentario}</p>
    </div>
  </li>
</ul>
  </div>
</div>
            </div>
    
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
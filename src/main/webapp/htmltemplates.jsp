<%-- 
    Document   : htmltemplates
    Created on : 26 ago. 2021, 22:30:46
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
  </head>
  <body>
      
    <!-- Start Top Bar -->
    <div class="top-bar">
      <div class="top-bar-left">
        <ul class="menu">
          <li class="menu-text">Botz</li>
          <li><a href="#">Inicio</a></li>
          <li><a href="#">Products</a></li>
          <li><a href="#">Contacts</a></li>
        </ul>
      </div>
    </div>
    <!-- End Top Bar -->

    <div class="callout large primary">
      <div class="row column text-center">
        <h1>Encuesta personal</h1>
        <h2 class="subheader">Ingrese sus datos</h2>
      </div>
    </div>
    <!-- We can now combine rows and columns when there's only one column in that row -->
    <div class="row medium-8 large-7 columns">
        <form class="callout secondary large" method="post" action="Servlethts">
<p>Titulo: <select size="1" name="title">
<option selected="selected">Mr</option>
<option>Mrs</option>
<option>Miss</option>
<option>Ms</option>
<option>Other</option>
</select></p>
<p>Nombre: <input type="text" name="name" size="20" value="---"/></p>
<p>Ciudad: <input type="text" name="city" size="20" value="---"/></p>
<p>Pais: <input type="text" name="country" size="20" value="---"/></p>
<p>Telefono: <input type="text" name="tel" size="20" value="---"/></p>
<fieldset class="fieldset">
  <legend>Cuales son tus intereses:</legend>
<input type="checkbox" name="interests" value="Deporte"/> Deporte<br/>
<input type="checkbox" name="interests" value="Musica"/> Musica<br/>
<input type="checkbox" name="interests" value="Lectura"/> Lectura<br/>
<input type="checkbox" name="interests" value="TV y Cine"/> TV y Cine
</fieldset>
<p>Tu edad es: <input type="radio" name="age" value="menor de 25"
checked="checked"/>Menor a 25 | 
<input type="radio" name="age" value="26 a 40"/> 26-40 | 
<input type="radio" name="age" value="41 a 65"/> 41-65 |
<input type="radio" name="age" value="mas de 65"/> Mas de 65 </p>
<p class="row align-spaced">
    <input class="columns button alert small-3" type="submit" value="Enviar" name="enviar"/>
</p>
</div>
</form>
    </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>


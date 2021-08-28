<%-- 
    Document   : Encuesta
    Created on : 27 ago. 2021, 10:28:21
    Author     : prantony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="taller.lpii_first.Nucleo"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">

        <link rel="stylesheet" href="style.css">
    </head>
<body class="important" id="important">
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
    <h1 id="title">Nombre del formulario</h1>
    
    <p id="description">Descripcion del formulario</p>
    
    <form id="survey-form" action="Servlethts" method="POST">
        <section id="first-section">
            
  
        <p style="color:red;">${ayudante.incompleto}</p>
        
                <h2>Sobre ti</h2>
        
        <label id="name-label" for="name">Name</label>
        <input
            id="name"
            name="name" 
            type="text" 
            placeholder="e.g., John Doe"
            value="${ayudante.datos.name}"
            required
        />
        
        <label id="email-label" for="email">E-mail</label>
        <input 
            id="email"
            name="email" 
            type="email" 
            value="${ayudante.datos.email}"
            placeholder="e.g., JohnDoe@newmail.com"
            required
        />
        
        <label id="number-label" for="number">Age (optional)</label>
            <input 
                id="number"
                name="age" 
                type="number" 
                min="9" 
                max="100"
                value="${ayudante.datos.age}"
                placeholder="e.g., 19"
            />
        <label for="dropdown">Pais</label>
        <select name="genero" id="dropdown">
            
            <option value="null" name="genero"></option>
            <option value="EEUU" name="genero">EEUU</option>
            <option value="Canada" name="genero">Canada</option>
            <option value="Egipto" name="genero">Egipto</option>
            <option value="Australia" name="genero">Australia</option><!-- comment -->
            <option value="Colombia" name="genero">Colombia</option><!-- comment -->
            <option value="Bolivia" name="genero">Bolivia</option>
            <option value="Gotham" name="genero">Gotham</option>
            
            
            
           
        </select>
        </section>
        
        <section id="second-section">
            <h2>Preguntas</h2>
            <p>¿Cual es tu nivel de programador?</p>
            <div id="second-section-question1">
                <label for="radio-1">
                    <input
                        id="radio-1" 
                        type="radio"
                        name="level"
                        value="junior"
                        
                        checked
                    />Junior
                </label>
                <label for="radio-2">
                    <input
                        id="radio-2" 
                        type="radio"
                        name="level"
                        
                        value="semi-senior"
                        
                    />Semi senior
                </label>
                <label for="radio-3">
                    <input
                        id="radio-3" 
                        type="radio"
                        name="level"
                        value="senior"
                    />Senior
                </label>
            </div>
            <p>Lenguajes de programacion preferidos</p>
            <div id="second-section-question2">
                <label for="">
                    <input 
                            type="checkbox" 
                            name="language" 
                            id="checkbox1" 
                            value="java" 
                    />Java
                </label>
                <label for="">
                    <input 
                            type="checkbox" 
                            name="language" 
                            id="checkbox1" 
                            value="python" 
                    />Python
                </label>
                <label for="">
                    <input 
                            type="checkbox" 
                            name="language" 
                            id="checkbox1" 
                            value="php" 
                    />PHP
                </label>
                <label for="">
                    <input 
                            type="checkbox" 
                            name="language" 
                            id="checkbox1" 
                            value="c" 
                    />C
                </label>
                <label for="">
                    <input 
                            type="checkbox" 
                            name="language" 
                            id="checkbox1" 
                            value="JavaScript" 
                    />JavaScript
                </label>
            </div>
        
        </section>
        <section>
        <h2>Comentarios adicionales</h2>
        <textarea name="comentario" placeholder='tu opinio no me importa'></textarea>
       
        <input id="submit" type="submit" value="Enviar" name="enviar">
        </section>
    </form>
</body>

</html>

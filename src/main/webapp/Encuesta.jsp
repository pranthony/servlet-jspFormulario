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
        <style>
            body{
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    text-align: center;
    color:azure;
    
}

body::before{
    position: fixed;
    content: "";
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    /*background-image: linear-gradient(
        115deg,
        rgba(158, 179, 236, 0.8),
        rgba(70, 67, 95, 0.7)
      ),
      url(https://upload.wikimedia.org/wikipedia/commons/5/52/Lake_Clearwater%2C_Canterbury%2C_New_Zealand_02.jpg);
    */
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    z-index: -1;
}
form{
    width: 100%;
    background: linear-gradient(rgb(62, 62, 212), rgb(35, 93, 185));
    margin: auto;
    text-align: left;
    border-radius: 25px;
    /*box-shadow: 12px 12px 15px cadetblue;*/
}
@media (min-width: 500px) {
    form{width: 500px;}
    html{font-size: 20px;}
}

label{font-size: 1.2rem;}
label, input{display: block;}

section{padding: 1rem;}
#first-section input, #dropdown, textarea, [type="submit"]{
    border-radius: 5px;
    border: none;
    width: 95%;
    margin: auto;
    margin-bottom: 1.5rem;
    margin-top: 0.8rem;
    padding: 0.5rem 1%;
}
#dropdown, textarea{width: 98%;}

#second-section-question1,#second-section-question2{
    display: flex;
    flex-wrap: wrap;
}
[type="radio"], [type="checkbox"]{
   display: inline;
   margin: 0.7rem;
}

textarea{height: 7rem;max-width: 98%; min-width: 98%;}

#submit{
    width: 100%;
    background-color: rgb(212, 91, 10);
    color: azure;
    font-size: 1rem;
}

#submit:hover{background-color: rgb(22, 169, 214);
}


            </style>
    </head>
<body>
    
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

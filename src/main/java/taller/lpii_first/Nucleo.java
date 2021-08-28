/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller.lpii_first;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author prantony
 */
public class Nucleo extends BaseHelper {
    protected Data datos;
    protected String incompleto;
    public Nucleo(HttpServlet servlet, HttpServletRequest request, HttpServletResponse response) {
        super(servlet, request, response);
        datos = new Data();
    }

    public String getIncompleto() {
        return incompleto;
    }

    public Data getDatos() {
        return datos;
    }
    
    public void doGet(){
        try{
        String direccion;
        
        request.getSession().setAttribute("ayudante", this);
        datos.setName(request.getParameter("name"));
        datos.setEmail(request.getParameter("email"));
        datos.setAge(request.getParameter("age"));
        datos.setGenero(request.getParameter("genero"));
        datos.setLevel(request.getParameter("level"));
        
        datos.setLanguage(request.getParameterValues("language"));
        datos.setComentario(request.getParameter("comentario"));
        
        if (request.getParameter("enviar")!=null && request.getParameterValues("language") != null){
            direccion = "resultado.jsp";
        }else {
            incompleto = "Seleccione un lenguaje de programacion";
            direccion = "Encuesta.jsp";
        }
        RequestDispatcher despachador = request.getRequestDispatcher(direccion);
        despachador.forward(request, response);
        }catch (Exception e){
            System.out.println(e);
        }
    }
    
}

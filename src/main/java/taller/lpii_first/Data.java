/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller.lpii_first;

import javax.ejb.Stateless;

/**
 *
 * @author prantony
 */
@Stateless
public class Data {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    String name, email, age, genero, comentario, level;
    String[] language;
    String languages = " ";
    
    public String getName() {
        return name;
    }

    public String getLevel() {
        return level;
    }

    public String getEmail() {
        return email;
    }

    public String getAge() {
        return age;
    }

    public String[] getLanguage() {
        return language;
    }

    public String getGenero() {
        return genero;
    }

    public String getComentario() {
        return comentario;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public void setLanguage(String[] language) {
        this.language = language;
    }
    
    public String getLanguages() {
        for (String language1 : this.language) {
            languages += language1 + ", ";
        }
        return languages;
    }
    
    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public void setLevel(String level) {
        this.level = level;
    }
    
    
}

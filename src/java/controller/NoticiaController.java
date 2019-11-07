/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.NoticiaDAO;
import model.pojo.Noticia;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author blasc
 */
public class NoticiaController implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView mv = new ModelAndView("noticias");
        
        try{
            List<Noticia> noticias = NoticiaDAO.listar();
            mv.addObject("noticias",noticias);
            return mv;
         }catch(Exception e){
            e.printStackTrace();
        }
        
        return null;
    }
    
    
    
}

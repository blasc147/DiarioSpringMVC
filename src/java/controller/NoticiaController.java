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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

/**
 *
 * @author blasc
 */
@Controller
public class NoticiaController{
    
    ModelAndView mv = new ModelAndView();

    @RequestMapping("noticias.htm")
    public ModelAndView listar(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        try{
            List<Noticia> noticias = NoticiaDAO.listar();
            mv.addObject("noticias",noticias);
            mv.setViewName("noticias");
            return mv;
         }catch(Exception e){
            e.printStackTrace();
        }
        
        return null;
    }
    
    @RequestMapping(value= "nuevaNoticia.htm", method=RequestMethod.GET)
    public ModelAndView nuevaNoticia(){
        mv.addObject(new Noticia());
        mv.setViewName("agregar");
        
        return mv;
    }
    
    @RequestMapping(value= "nuevaNoticia.htm", method=RequestMethod.POST)
    public ModelAndView nuevaNoticia(Noticia n){
        ModelAndView mv = new ModelAndView("nuevaNoticia");
        
        try{
            NoticiaDAO.agregar(n);
            return mv;
         }catch(Exception e){
            e.printStackTrace();
        }
        
        return new ModelAndView("redirect:/index.htm");
    }
    
    
    
}

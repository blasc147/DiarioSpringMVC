/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model.dao;

import java.util.List;
import model.pojo.Noticia;
import model.util.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author blasc
 */
public class NoticiaDAO {
    
    public static List<Noticia> listar(){
        List<Noticia> noticias = null;
        
        try{
            Session session = HibernateUtil.getSessionFactory().openSession();
            
            String hql = "from Noticia";
            Query query = session.createQuery(hql);
            noticias = query.list();
            session.close();
        }catch(HibernateException e){
            System.out.println("Error al conectar con Hibernate");
            e.printStackTrace();
        }
        
        return noticias;
    }
    
    public static void agregar(Noticia n){
        
        
        try{
            Session session = HibernateUtil.getSessionFactory().openSession();
            
            session.save(n);
            session.getTransaction().commit();
            session.close();
            
           
        }catch(HibernateException e){
            System.out.println("Error al conectar con Hibernate");
            e.printStackTrace();
        }
        
    }
}

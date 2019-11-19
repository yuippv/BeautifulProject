/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Jpacontroller.LessonJpaController;
import Model.Lesson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.UserTransaction;

/**
 *
 * @author yypsx
 */
public class LessonServlet extends HttpServlet {

    @PersistenceUnit (unitName="BeautifulProjectPU")
    EntityManagerFactory emf ;
    
    @Resource
    UserTransaction utx ;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false) ;
        String lesson = request.getParameter("lesson") ;
        LessonJpaController ljc = new LessonJpaController(utx, emf) ;
        
        if(lesson != null){
            if(lesson.equalsIgnoreCase("subject")){
                List<Lesson> lessons = ljc.findLessonEntities() ;
                request.setAttribute("topic", "All");
                request.setAttribute("lesson", lessons);
                response.sendRedirect("/ProjectWebPro/Quiz.jsp");
                return ;
        } else{
               List<Lesson> lessons = ljc.findLessonEntities() ;
               List<Lesson> lessonAdd = new ArrayList(100);
               
               for(Lesson lessonSet : lessons){
                   if(lessonSet.getSubject().equals(lesson)){
                       lessonAdd.add(lessonSet);
                   }
            }
               request.setAttribute("topic", lesson);
               session.setAttribute("lesson",lessonAdd);
               response.sendRedirect("/ProjectWebPro/Quiz.jsp");
               return;
         }
        }
        getServletContext().getRequestDispatcher("/Index.jsp").forward(request, response);
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

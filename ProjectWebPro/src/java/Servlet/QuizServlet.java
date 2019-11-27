/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.QuizController;
import Jpacontroller.QuizJpaController;
import Model.Account;
import Model.Quiz;
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
public class QuizServlet extends HttpServlet {

    @PersistenceUnit (unitName="BeautifulProjectPU")
    EntityManagerFactory emf ;
    
    @Resource
    UserTransaction utx ;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
       String lesson = request.getParameter("lessonid");
        System.out.println("jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
        
         if(lesson !=null){       
        String lessonid = (request.getParameter("lessonid"));
        QuizController qc = new QuizController();
        ArrayList<Models.Quiz> q = qc.findbyques(lessonid);
             System.out.println("5555");
             System.out.println(q);
             request.setAttribute("lessonid", lesson);
        request.getSession().setAttribute("ques", q);
        getServletContext().getRequestDispatcher("/Quiz.jsp").forward(request, response);
        }
        
        
        
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

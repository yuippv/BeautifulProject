/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Jpacontroller.AccountJpaController;
import Jpacontroller.exceptions.NonexistentEntityException;
import Jpacontroller.exceptions.RollbackFailureException;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class EditAccountServlet extends HttpServlet {

    @PersistenceUnit (unitName="BeautifulProjectPU")
    EntityManagerFactory emf ;
    
    @Resource
    UserTransaction utx ;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email") ;
        if(email==null){
            request.getParameterValues("email") ;
        }
        
        String password = request.getParameter("password") ;
        if(password==null){
            request.getParameterValues("password") ;
        }
        
        String firstname = request.getParameter("firstname") ;
        if(firstname==null){
            request.getParameterValues("firstname") ;
        }
        
        String lastname = request.getParameter("lastname") ;
        if(lastname==null){
            request.getParameterValues("lastname") ;
        }
        
        String address = request.getParameter("address") ;
        if(address==null){
            request.getParameterValues("address") ;
        }
        
        String gender = request.getParameter("gender") ;
        if(gender==null){
            request.getParameterValues("gender") ;
        }
        
        String tel = request.getParameter("tel") ;
        if(tel==null){
            request.getParameterValues("tel") ;
        }
        
        String school = request.getParameter("school") ;
        if(school==null){
            request.getParameterValues("school") ;
        }
                
        HttpSession session = request.getSession(false) ;
        AccountJpaController ajc = new AccountJpaController(utx, emf) ;
        Account account = (Account)session.getAttribute("account") ;

        
        account.setEmail(email);
        account.setPassword(password);
        account.setFirstname(firstname);
        account.setLastname(lastname);
        account.setAddress(address);
        account.setGender(gender);
        account.setTel(tel);
        account.setSchool(school);
        
        try{
            ajc.edit(account);

        } catch (RollbackFailureException ex) {
            Logger.getLogger(EditAccountServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(EditAccountServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("notice", "Updated profile.");
        getServletContext().getRequestDispatcher("/MyAccount").forward(request, response);
        
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Jpacontroller.AccountJpaController;
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
public class RegisterServlet extends HttpServlet {

    @PersistenceUnit(unitName = "BeautifulProjectPU")
    EntityManagerFactory emf;

    @Resource
    UserTransaction utx;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender") ;
        String tel = request.getParameter("tel");
        String address = request.getParameter("address");
        String school = request.getParameter("school");

        AccountJpaController ajc = new AccountJpaController(utx, emf);
        List<Account> accountDB = ajc.findAccountEntities();

        if (firstname != null && firstname.trim().length() > 0 && lastname != null && lastname.trim().length() > 0
                && email != null && email.trim().length() > 0 && password != null && password.trim().length() > 0
                && tel != null && tel.trim().length() > 0 && address != null && address.trim().length() > 0
                && school != null && school.trim().length() > 0) {

            for (Account account : accountDB) {
                if (account.getEmail().equalsIgnoreCase(email)) {
                    request.setAttribute("warning", "Email has been use.");
                    response.sendRedirect("/ProjectWebPro/Register.jsp");
                    return;
                }
                
            }
            Account newAccount = new Account(email, password, firstname, lastname, gender, tel, address, school);
                try {
                    ajc.create(newAccount);
                } catch (RollbackFailureException ex) {
                    Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
                } catch (Exception ex) {
                    Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                response.sendRedirect("/ProjectWebPro/Index.jsp");
                return;
        } else {
            request.setAttribute("errorregister", "Invalid data");
            getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
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

package com.prashant.webapp.servlet;

import com.prashant.webapp.dao.UserDAO;
import com.prashant.webapp.entities.User;
import com.prashant.webapp.utility.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp 1
 */
public class SaveRegisterUser extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            //get user data
            String rec_email=request.getParameter("email").trim();
            String rec_otp=request.getParameter("otp").trim();
            
            //create session
            HttpSession user_session=request.getSession();
            
            //fetch progress user data from session
            User usr=(User)user_session.getAttribute("progress_usr");
            String otp=(String)user_session.getAttribute("otp");
            
            //validation
            if(user_session == null || otp == null || !rec_email.equals(usr.getEmail()) || 
                    !rec_otp.equals(otp)
                    ){
                response.sendRedirect("./verify-email.jsp");
                return ;
            }
            
            //else save user to database
            UserDAO userDAO=new UserDAO(ConnectionProvider.getSessionFactory());
            
            //expire session
            user_session.setMaxInactiveInterval(0);
            if(userDAO.addUser(usr)){
                response.sendRedirect("./user-info.jsp");
                return;
            }
            
            //something went wrong 
            response.sendRedirect("./login-signup.jsp"); //resubmit the form
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

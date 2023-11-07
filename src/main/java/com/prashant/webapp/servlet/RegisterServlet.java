package com.prashant.webapp.servlet;

import com.prashant.webapp.dao.UserDAO;
import com.prashant.webapp.entities.User;
import com.prashant.webapp.utility.ConnectionProvider;
import com.prashant.webapp.utility.GenerateUUID;
import com.prashant.webapp.utility.MailSender;
import com.prashant.webapp.utility.OTPGenerator;
import com.prashant.webapp.utility.PasswordEncrypter;
import com.prashant.webapp.utility.PasswordValidator;
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
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            //take request data
            String firstName = request.getParameter("firstName").trim();
            String lastName = request.getParameter("lastName").trim();
            String email = request.getParameter("email").trim();
            String password = request.getParameter("password").trim();
            String confirmPassword = request.getParameter("confirmpassword").trim();
            
            //server side validation
            
            //password confirmation
            if(!PasswordValidator.isStrongPassword(password) || !password.equals(confirmPassword)){
                response.sendRedirect("./register-page.jsp");
                return ;
            }
            
            
            //empty input
            if(firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()){
                response.sendRedirect("./register-page.jsp");
                return ;
            }
            
            //set user details
            
            User usr=new User(GenerateUUID.generateID(), firstName, lastName, email, PasswordEncrypter.hashPassword(password));
            
            //check if user already exist
            UserDAO usrDAO=new UserDAO(ConnectionProvider.getSessionFactory());
            if(usrDAO.getUserByEmail(email) != null){
                System.err.println("user already exist : form RegisterServlet");
                response.sendRedirect("./login-signup.jsp");
                return ;
            }
            
            //verify email is authenticated or not
            String generatedOTP=OTPGenerator.generateOTP();
            
            //send mail
            if(!MailSender.send(email, "spread : verification code sent ", "otp : "+generatedOTP, getServletContext())){
                System.err.println("error for  RegisterServlet : mail not send...");
                response.sendRedirect("./login-signup.jsp");
                return ;
            }
            
            HttpSession user_session=request.getSession();
            user_session.setAttribute("progress_usr", usr);
            user_session.setAttribute("otp", generatedOTP);
            user_session.setMaxInactiveInterval(300);
            response.sendRedirect("./verify-email.jsp");
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

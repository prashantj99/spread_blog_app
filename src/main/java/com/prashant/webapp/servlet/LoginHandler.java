package com.prashant.webapp.servlet;

import com.prashant.webapp.dao.UserDAO;
import com.prashant.webapp.entities.User;
import com.prashant.webapp.utility.ConnectionProvider;
import com.prashant.webapp.utility.PasswordEncrypter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginHandler extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String email = request.getParameter("email").trim();
            String password = request.getParameter("password").trim();

            // Check if the user exists in the database and the password matches
            UserDAO userDAO = new UserDAO(ConnectionProvider.getSessionFactory()); // Create or inject your UserDAO instance
            User user = userDAO.getUserByEmail(email);

            if (user != null && PasswordEncrypter.verifyPassword(password, user.getPasswordHash())) {
                // Successful login, set user session and redirect
                request.getSession().setAttribute("login_user", user);
                response.sendRedirect("./user-info.jsp"); // Redirect to a welcome page
                return ;
            }
            // Failed login, display an error message
            request.setAttribute("error", "Invalid email or password");
            response.sendRedirect("./login-signup.jsp");
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

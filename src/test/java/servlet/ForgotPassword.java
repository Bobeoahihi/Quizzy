
package servlet;

import dao.UsersDAO;
import model.Register;
import model.SendEmail;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "ForgotPassword", urlPatterns = {"/ForgotPassword"})
public class ForgotPassword extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try (PrintWriter out = response.getWriter()) {
            UsersDAO dao = new UsersDAO();
            String email = request.getParameter("email_SendNewPass");
            Register emailRegistered = dao.checkAccountExist(email);

            if (emailRegistered != null) {
                SendEmail sendEmail = new SendEmail();
                String newPass = sendEmail.getRandom();
                boolean test = sendEmail.sendNewPass(email, newPass);
                if (test == true) {
                    dao.forgotPass(newPass, email);
                    request.setAttribute("messageSuccessfully", "Change Password successfullt, please login again!");
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                } else {
                    request.setAttribute("messageFailSendEmail", "Failed to send verification email");
                    request.getRequestDispatcher("ForgotPass.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("messageEmailNotRegistered", "Email is not registered");
                request.getRequestDispatcher("ForgotPass.jsp").forward(request, response);

            }
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("ForgotPass.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

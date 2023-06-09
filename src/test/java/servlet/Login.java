package servlet;

import dao.UsersDAO;
import model.Users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

       protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("email")) {
                request.setAttribute("email", o.getValue());
            }
            if (o.getName().equals("pass")) {
                request.setAttribute("pass", o.getValue());
            }
            if (o.getName().equals("remember")) {
                request.setAttribute("remember", o.getValue());
            }
        }
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String remember = request.getParameter("remember");

        UsersDAO ud = new UsersDAO();
        Users u = ud.getUsers(email, password);
        if (u == null) {
            request.setAttribute("messageInvalidEmail_Pass", "invalid email or password");
            request.getRequestDispatcher("Login.jsp").forward(request, response);

        } else {
            if (u.getRole_id() ==10) {
            request.setAttribute("messageInvalidEmail_Pass", "Your account has been banned. Please contact us via email: hakanai2020@gmail.com for support");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
            HttpSession session = request.getSession();
            session.setAttribute("userSeisson", u);

            Cookie cookieEmail = new Cookie("email", email);
            Cookie cookiePass = new Cookie("pass", password);
            Cookie cookieRemember = new Cookie("remember", remember);
          

            if (remember != null) {
                cookieEmail.setMaxAge(60 * 60 * 24);
                cookiePass.setMaxAge(60 * 60 * 24);
                cookieRemember.setMaxAge(60 * 60 * 24);
            } else {
                cookieEmail.setMaxAge(0);
                cookiePass.setMaxAge(0);
                cookieRemember.setMaxAge(0);
            }
            response.addCookie(cookieEmail);//luu pass va email len trinh duyet
            response.addCookie(cookiePass);
            response.addCookie(cookieRemember);
            request.getRequestDispatcher("Home").forward(request, response);
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

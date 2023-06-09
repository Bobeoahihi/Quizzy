package servlet;

import dao.UsersDAO;
import model.Users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ChangeProfile", urlPatterns = {"/ChangeProfile"})
public class ChangeProfile extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ChangeName</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangeName at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        UsersDAO dao = new UsersDAO();
        String id = request.getParameter("id");
        String name = request.getParameter("fullname");
        String aboutme = request.getParameter("aboutme");
        String connect = request.getParameter("connect");

        if (name.equals("")) {
            request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
        } else {
            dao.updateProfile(id, name,aboutme,connect);
            Users u = dao.getUserByID(id);
            HttpSession session = request.getSession();
            session.setAttribute("userSeisson", u);
            request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

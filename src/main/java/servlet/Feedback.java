package servlet;

import dao.QuestionDAO;
import dao.QuizDAO;
import dao.UsersDAO;
import model.Option;
import model.Question;
import model.Quiz;
import model.Users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;


@WebServlet(name = "Feedback", urlPatterns = {"/Feedback"})
public class Feedback extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Feedback</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Feedback at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        QuizDAO dao = new QuizDAO();
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        int user_id = (user.getUser_id());
        String quiz_id = request.getParameter("quizid");
        String rate = request.getParameter("myField");
        String feedback = request.getParameter("feedback");
        String datenow = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        if (!rate.equals("")) {
            if (dao.checkFeedbackExist(quiz_id, user_id)) {
                dao.updateFeedback(quiz_id, user_id, feedback, datenow, rate);
            } else {
                dao.Feedback(quiz_id, user_id, feedback, datenow, rate);
            }
        }

        UsersDAO udao = new UsersDAO();
        QuestionDAO quesdao = new QuestionDAO();
        Quiz quiz = dao.getQuizByID(quiz_id);
        List<Question> listQuestion = quesdao.getAllQuestion(Integer.parseInt(quiz_id));
        List<Option> listOption = quesdao.getAllOption(Integer.parseInt(quiz_id));
        float avgRate = dao.avgRateOfQuiz(quiz_id);
        Users creator = udao.getUserByID(String.valueOf(quiz.getCreator_id()));
        request.setAttribute("avgRate", avgRate);
        request.setAttribute("quiz", quiz);
        request.setAttribute("creator", creator);
        request.setAttribute("listQuestion", listQuestion);
        request.setAttribute("listOption", listOption);
        request.getRequestDispatcher("QuizDetail.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

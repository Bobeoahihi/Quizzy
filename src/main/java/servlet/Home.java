
package servlet;

import dao.AdminDAO;
import dao.QuizDAO;
import model.Quiz;
import model.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;


@WebServlet(name = "Home", urlPatterns = {"/Home"})
public class Home extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            QuizDAO qDAO = new QuizDAO();
            Quiz q = new Quiz();
            HttpSession session = request.getSession();
            Users user = (Users) session.getAttribute("userSeisson");
            List<Quiz> quiz = qDAO.getRecentQuiz(user.getUser_id());
            request.setAttribute("quizList", quiz);
            if (user != null) { //neu user lay ve co gia tri
                if (qDAO.getTopQuizByUserID(user.getUser_id()).isEmpty()) {
                    List<Quiz> listRandomQuiz2 = qDAO.getTopQuiz(); // neu getRandomQuiz trong thi sang GRQ2
                    request.setAttribute("randomQuiz", listRandomQuiz2);
                } else {
                    List<Quiz> listRandomQuiz = qDAO.getTopQuizByUserID(user.getUser_id()); //neu getRandomQuiz co du lieeu thi tra ve nó
                    request.setAttribute("randomQuiz", listRandomQuiz);
                }
            } else { // neu user lay ve bi trong
                List<Quiz> listRandomQuiz = qDAO.getTopQuiz();
                request.setAttribute("randomQuiz", listRandomQuiz);
            }
            request.getRequestDispatcher("/Home.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        QuizDAO qDAO = new QuizDAO();
        Quiz q = new Quiz();
        HttpSession session = request.getSession();

        if (session.isNew()) {
            AdminDAO adminDAO = new AdminDAO();
            String dateNow = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                if (adminDAO.checkVisit(dateNow)) {
                    adminDAO.updateVisitor(dateNow);
                }else{
                adminDAO.insertVisitor();
                }
            }
        Users user = (Users) session.getAttribute("userSeisson");
        if (user != null) {
             List<Quiz> quiz = qDAO.getRecentQuiz(user.getUser_id());
                request.setAttribute("quizList", quiz);
            if (qDAO.getTopQuizByUserID(user.getUser_id()).isEmpty()) {
                List<Quiz> listRandomQuiz2 = qDAO.getTopQuiz();
                request.setAttribute("randomQuiz", listRandomQuiz2);
            } else {
                List<Quiz> listRandomQuiz = qDAO.getTopQuizByUserID(user.getUser_id());
                request.setAttribute("randomQuiz", listRandomQuiz);
            }
        } else {
            List<Quiz> listRandomQuiz = qDAO.getTopQuiz();
            request.setAttribute("randomQuiz", listRandomQuiz);
        }
        request.getRequestDispatcher("/Home.jsp").forward(request, response);
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

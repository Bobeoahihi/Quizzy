
package servlet;

import dao.QuizDAO;
import model.Quiz;
import model.Users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "HomeMoreServlet", urlPatterns = {"/HomeMoreServlet"})
public class HomeMoreServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("Action");
        QuizDAO qDAO = new QuizDAO();
        Quiz q = new Quiz();
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        List<Quiz> list = new ArrayList<>();
        if (action != null) {
            switch (action) {
                case "Recommend":
                    if (user != null) {
                        if (qDAO.getTopQuizByUserID(user.getUser_id()).isEmpty()) {
                            list = qDAO.getTopQuiz();
                        } else {
                            list = qDAO.getTopQuizByUserID(user.getUser_id());
                        }
                    } else {
                        list = qDAO.getTopQuiz();
                    }
                    break;
                case "All Quiz":
                    list = qDAO.getAllQuiz();
                    break;
                default:
                    break;
            }
        }
        int size = list.size();
        int numperPage = 6;
        int numPage = size / numperPage + (size % numperPage == 0 ? 0 : 1);
        String spage = request.getParameter("page");
        int page;
        if (spage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(spage);
        }
        int start, end;
        start = (page - 1) * numperPage;
        end = Math.min(size, page * numperPage);

        List<Quiz> arr = qDAO.getQuizByPage(list, start, end);
        request.setAttribute("Action", action);
        request.setAttribute("quizList", arr);
        request.setAttribute("num", numPage);
        //     request.setAttribute("data", arr);
        request.setAttribute("page", page);
        request.getRequestDispatcher("HomeMore.jsp").forward(request, response);
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

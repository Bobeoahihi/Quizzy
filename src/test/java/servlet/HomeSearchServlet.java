
package servlet;

import dao.QuizDAO;
import model.Quiz;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet(name = "HomeSearchServlet", urlPatterns = {"/HomeSearchServlet"})
public class HomeSearchServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String search = (String) request.getParameter("SearchQuiz");
        QuizDAO qDAO = new QuizDAO();
        Quiz q = new Quiz();
        List<Quiz> list = qDAO.searchByName(search);
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
        request.setAttribute("quizList", arr);
        request.setAttribute("num", numPage);
        request.setAttribute("page", page);
        request.setAttribute("SearchQuiz", search);
        request.getRequestDispatcher("HomeMore.jsp").forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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

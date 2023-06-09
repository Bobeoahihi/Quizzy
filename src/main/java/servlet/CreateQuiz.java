package servlet;

import dao.CategoryDAO;
import dao.QuestionDAO;
import dao.QuizDAO;
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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "CreateQuiz", urlPatterns = {"/CreateQuiz"})
public class CreateQuiz extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            Users user = (Users) session.getAttribute("userSeisson");
            QuestionDAO qDAO = new QuestionDAO();
            QuizDAO dao = new QuizDAO();
            CategoryDAO cDAO = new CategoryDAO();
            
            UsersDAO userDao = new UsersDAO();

            String quizTitle = request.getParameter("quiz_title");
            String dateNow = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            String quizDescription = request.getParameter("quiz_description");
            String Question = request.getParameter("ListQuestion");
            String optionOfQuestion = request.getParameter("ListOption");
            String Category[] = request.getParameterValues("chooseCategory");
           
            dao.addQuiz(user.getUser_id(), quizTitle, quizDescription, dateNow);
            int lastQuizID = dao.getLastQuizId(user.getUser_id());
            int Checked = 0;
            
            String[] listQuestion = Question.split("@@@##@@@");
            
            for (int i = 3, j = 5, k = 7; i < listQuestion.length
                    && j < listQuestion.length && k < listQuestion.length; i += 8, j += 8, k += 8) {
                int idQuestion = Integer.parseInt(listQuestion[i].substring(14, listQuestion[i].length() - 3));
                String allQuestion = listQuestion[j].substring(24, listQuestion[j].length() - 4);
                String questionInstruction = listQuestion[k].substring(24, listQuestion[k].length() - 3);
                qDAO.addQuestion(lastQuizID, idQuestion, allQuestion, questionInstruction);
            }

            String[] listOption = optionOfQuestion.split("@@@##@@@");
            for (int m = 3, i = 5, j = 7, k = 9; i < listOption.length && j < listOption.length
                    && k < listOption.length && m < listOption.length; i += 10, j += 10, k += 10, m += 10) {
                int idQuestion = Integer.parseInt(listOption[m].substring(14, listOption[m].length() - 3));
                int idOption = Integer.parseInt(listOption[i].substring(12, listOption[i].length() - 3));
                String checkedBox = listOption[j].substring(12, listOption[j].length() - 3);
                if (checkedBox.contains("true")) {
                    Checked = 1;
                }
                if (checkedBox.contains("false")) {
                    Checked = 0;
                }
                String optionDescription = listOption[k].substring(22, listOption[k].length() - 3);
                qDAO.addOption(lastQuizID, idQuestion, idOption, Checked, optionDescription);
            }
            for (int i=0; i<Category.length;i++) {
                 cDAO.addCategoryForQuiz(lastQuizID, Category[i]);
            }
            dao.addEnrollment(String.valueOf(lastQuizID), user.getUser_id(), dateNow);
            Users updateUserSession = userDao.getUsers(user.getEmail(), user.getPassword());
            session.setAttribute("userSeisson", updateUserSession);
            request.setAttribute("success", "Create quiz successfully!");
            request.getRequestDispatcher("CreateQuiz.jsp").forward(request, response);
    }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("CreateQuiz.jsp").forward(request, response);
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


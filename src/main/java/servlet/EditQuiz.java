package servlet;

import dao.CategoryDAO;
import dao.QuestionDAO;
import dao.QuizDAO;
import model.Category;
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
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "EditQuiz", urlPatterns = {"/EditQuiz"})
public class EditQuiz extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            Users user = (Users) session.getAttribute("userSeisson");
            int quiz_id = Integer.parseInt(request.getParameter("quiz_id"));
            QuizDAO qDAO = new QuizDAO();
            QuestionDAO quesDAO = new QuestionDAO();

            CategoryDAO cDAO = new CategoryDAO();
            List<Category> listAllCategory = cDAO.getCategory();
            List<Category> listCategoryOfQuiz = cDAO.getCategoryIDForQuiz(quiz_id);
            request.setAttribute("title", qDAO.getQuizByCreatorIDAndQuizID(user.getUser_id(), quiz_id));
            request.setAttribute("allQuestion", quesDAO.getAllQuestion(quiz_id));
            request.setAttribute("allOption", quesDAO.getAllOption(quiz_id));
            request.setAttribute("QuizID", quiz_id);
            List<Category> listCat = new ArrayList<Category>();
            Category category = new Category();

            for (int i = 0; i < listAllCategory.size(); i++) {
                boolean check = false;
                for (int j = 0; j < listCategoryOfQuiz.size(); j++) {
                    if (listAllCategory.get(i).getCategory_id() == listCategoryOfQuiz.get(j).getCategory_id()) {
                        check = true;
                    }
                }
                if (check) {
                    category = new Category(listAllCategory.get(i).getCategory_id(), listAllCategory.get(i).getCategory_name(), 1);
                } else {
                    category = new Category(listAllCategory.get(i).getCategory_id(), listAllCategory.get(i).getCategory_name(), 0);
                }
                listCat.add(category);

            }

            request.setAttribute("listCat", listCat);
            request.getRequestDispatcher("EditQuiz.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        int quizId = Integer.parseInt(request.getParameter("Quiz_ID"));
        QuestionDAO qDAO = new QuestionDAO();
        QuizDAO dao = new QuizDAO();
        CategoryDAO cDAO = new CategoryDAO();

        String quizTitle = request.getParameter("quiz_title");
        String dateNow = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        String quizDescription = request.getParameter("quiz_description");
        String Question = request.getParameter("ListQuestion");
        String optionOfQuestion = request.getParameter("ListOption");
        String Category[] = request.getParameterValues("chooseCategory");

        dao.updateQuiz(quizTitle, quizDescription, dateNow, quizId);
        int Checked = 0;
        
        try {
            String[] listQuestion = Question.split("@@@##@@@");
        qDAO.deleteOption(quizId);
        qDAO.deleteQuestion(quizId);
        cDAO.deleteCategory(quizId);
        for (int i = 0; i < Category.length; i++) {
            cDAO.addCategoryForQuiz(quizId, Category[i]);
        }
        
        for (int i = 3, j = 5, k = 7; i < listQuestion.length
                && j < listQuestion.length && k < listQuestion.length; i += 8, j += 8, k += 8) {
            int idQuestion = Integer.parseInt(listQuestion[i].substring(14, listQuestion[i].length() - 3));
            String allQuestion = listQuestion[j].substring(24, listQuestion[j].length() - 4);
            String questionInstruction = listQuestion[k].substring(24, listQuestion[k].length() - 3);
            qDAO.addQuestion(quizId, idQuestion, allQuestion, questionInstruction);
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
            qDAO.addOption(quizId, idQuestion, idOption, Checked, optionDescription);
        }
        request.setAttribute("success", "Edit quiz successfully!");
        response.sendRedirect("EditQuiz?quiz_id=" + quizId);
        
        } catch (Exception e) {
        String[] listQuestion = Question.split("@@@##@@@");
        qDAO.deleteQuestion(quizId);
        qDAO.deleteOption(quizId);
        cDAO.deleteCategory(quizId);
        
        for (int i = 3, j = 5, k = 7; i < listQuestion.length
                && j < listQuestion.length && k < listQuestion.length; i += 8, j += 8, k += 8) {
            int idQuestion = Integer.parseInt(listQuestion[i].substring(14, listQuestion[i].length() - 3));
            String allQuestion = listQuestion[j].substring(24, listQuestion[j].length() - 4);
            String questionInstruction = listQuestion[k].substring(24, listQuestion[k].length() - 3);
            qDAO.addQuestion(quizId, idQuestion, allQuestion, questionInstruction);
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
            qDAO.addOption(quizId, idQuestion, idOption, Checked, optionDescription);
        }
        request.setAttribute("success", "Edit quiz successfully!");
            response.sendRedirect("EditQuiz?quiz_id=" + quizId);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

package servlet;

import dao.ExamDAO;
import model.ExamReview;
import model.Option;
import model.Question;
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


@WebServlet(name = "ExamResultServlet", urlPatterns = {"/ExamResultServlet"})
public class ExamResultServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ExamResultServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ExamResultServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String exam_id = request.getParameter("exam_id");
        ExamDAO dao = new ExamDAO();
        ExamReview examReview = dao.getExamById(Integer.parseInt(exam_id));
        List<Question> listQuesInExam = dao.getQuesInExam(Integer.parseInt(exam_id));
        request.setAttribute("examReview", examReview);
        request.setAttribute("listQues", listQuesInExam);
        request.getRequestDispatcher("ReviewQuiz.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        ExamDAO dao = new ExamDAO();
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        String quiz_id = request.getParameter("quiz_id");
        String dateNow = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        try {
            String[] listQues = request.getParameterValues("listQues");
            String[] listOption = request.getParameterValues("listOption");
            String[] listChoose = request.getParameterValues("listChoose");
            if (listChoose == null) {
                for (int i = 0; i < listOption.length; i++) {
                    listOption[i] += "-0";
                }
            } else {
                for (int i = 0; i < listOption.length; i++) {
                    boolean check = false;
                    for (int j = 0; j < listChoose.length; j++) {
                        if (listOption[i].substring(0, listChoose[j].length()).equals(listChoose[j])) {
                            check = true;
                            break;
                        }
                    }
                    if (check) {
                        listOption[i] += "-1";
                    } else {
                        listOption[i] += "-0";
                    }
                }
            }

            List<Option> optionReview = dao.optionReview(listOption);
            List<Question> questionReview = dao.questionReview(listQues, optionReview);
            int numOfCorrect = dao.numOfCorrect(questionReview);
            float mark = (float) numOfCorrect / listQues.length;
            mark = (float) Math.round(mark * 1000) / 100;
            dao.addExam(user.getUser_id(), quiz_id, mark, numOfCorrect, listQues.length, dateNow, "");
            int exam_id = dao.getCurentExamID(user.getUser_id(), quiz_id);
            dao.addQuesExam(exam_id, questionReview);
            dao.addOptionExam(exam_id, optionReview);
        } catch (Exception e) {
        }
        response.sendRedirect("ListExamServlet?quiz_id=" + quiz_id);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

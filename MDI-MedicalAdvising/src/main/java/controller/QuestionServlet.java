package controller;

import model.Customer;
import model.Doctor;
import model.Question;
import service.QuestionService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
@WebServlet(name = "question", urlPatterns = "/question")
public class QuestionServlet extends HttpServlet {
    QuestionService questionService = new QuestionService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("actionUser");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "questionDetail":
                showDetailQuestion(request,response);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "reply":
                inputReplyDoctor(request, response);
                break;
            case "question":
                inputQuestionCustomer(request,response);
                break;
        }
    }

    public void inputQuestionCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String question = request.getParameter("questionContent");
        int id = ((Customer) request.getSession().getAttribute("customer")).getId();
        String title = request.getParameter("title");
        //X??? l?? th???i gian ?????t c??u h???i
        LocalDateTime current = LocalDateTime.now();
        //s??? d???ng class DateTimeFormatter ????? ?????nh d???ng ng??y gi??? theo ki???u pattern
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");
        //s??? d???ng ph????ng th???c format() ????? ?????nh d???ng ng??y gi??? hi???n t???i r???i g??n cho chu???i formatted
        String formatted = current.format(formatter);
        //-----------------------------
        boolean isCheck = this.questionService.uploadQuestion(id, question, title,formatted);
        if (isCheck) {
            String success = "B???n ???? g???i c??u h???i th??nh c??ng, B??c s?? s??? tr??? l???i c??u h???i c???a b???n trong gi??y l??t";
            request.setAttribute("success", success);
            request.setAttribute("fail", null);
            request.getRequestDispatcher("Customer/question.jsp").forward(request, response);
        } else {
            String fail = "L???i sever, vui l??ng th??? l???i sau";
            request.setAttribute("fail", fail);
            request.setAttribute("success", null);
            request.getRequestDispatcher("Customer/question.jsp").forward(request, response);
        }

    }

    public void inputReplyDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reply = request.getParameter("answerContent");
        Doctor doctor = (Doctor) request.getSession().getAttribute("doctor");
        int id = Integer.parseInt(request.getParameter("idQuestion"));
        Question question = this.questionService.getQuestion(id);
        question.setStatus(2);
        question.setDoctor(doctor);
        question.setAnswer(reply);
        //X??? l?? th???i gian ?????t c??u h???i
        LocalDateTime current = LocalDateTime.now();
        //s??? d???ng class DateTimeFormatter ????? ?????nh d???ng ng??y gi??? theo ki???u pattern
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");
        //s??? d???ng ph????ng th???c format() ????? ?????nh d???ng ng??y gi??? hi???n t???i r???i g??n cho chu???i formatted
        String formatted = current.format(formatter);
        //-----------------------------
        question.setTimeAnswer(formatted);
        boolean isCheck = this.questionService.updateQuestion(question);
        if (isCheck) {
            String success = "Tr??? l???i c??u h???i th??nh c??ng";
            List<Question> questions = this.questionService.getAllQuestionNoReply();
            request.setAttribute("questions",questions);
            request.setAttribute("success", success);
            request.setAttribute("fail", null);
            request.getRequestDispatcher("Doctor/question.jsp").forward(request, response);
        } else {
            String fail = "L???i sever, vui l??ng th??? l???i sau";
            List<Question> questions = this.questionService.getAllQuestionNoReply();
            request.setAttribute("questions",questions);
            request.setAttribute("fail", fail);
            request.setAttribute("success", null);
            request.getRequestDispatcher("Doctor/question.jsp").forward(request, response);
        }
    }
    private void showDetailQuestion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Question question = this.questionService.getQuestion(id);
        request.setAttribute("question",question);
        List<Question> questions = this.questionService.getAllQuestionReply();
        request.setAttribute("questions", questions);
        request.getRequestDispatcher("Customer/questiondetail.jsp").forward(request,response);
    }
}

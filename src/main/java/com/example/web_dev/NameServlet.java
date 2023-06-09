package com.example.web_dev;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "NameServlet", urlPatterns ="/name" )
public class NameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String age = request.getParameter("age");

        StringBuilder error = new StringBuilder();
        if(firstName == null){
            error.append("A first name was not provided");
        }else if (lastName == null){
            error.append("A last name was not provided");
        }else if (age == null){
            error.append("An age was not provided");
        }
        if(error.length() > 8){
            request.setAttribute("error", error.toString());
        }else{
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("age", age);
        }
        getServletContext().getRequestDispatcher("/other").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

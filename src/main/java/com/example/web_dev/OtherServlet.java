package com.example.web_dev;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "OtherServlet", urlPatterns = "/other")
public class OtherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getAttribute("eror") == null){
            String firstName =(String) request.getAttribute("firstName");
            String lastName = (String) request.getAttribute("lastName");
            String age = (String) request.getAttribute("age");

            System.out.println(firstName + " " + lastName + " " + age);
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

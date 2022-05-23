package com.example.assignment_register;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterService extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/auth/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String birthday = req.getParameter("birthday");

        req.setAttribute("userName" , userName);
        req.setAttribute("fullName" , fullName);
        req.setAttribute("email" , email);
        req.setAttribute("phone" , phone);
        req.setAttribute("birthday" , birthday);

        req.getRequestDispatcher("/alert/alert.jsp").forward(req, resp);
    }
}

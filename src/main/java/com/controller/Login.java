package com.controller;

import java.io.IOException;

import com.DAO.UserDAO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("request to login !!!!");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		UserDAO us = new UserDAO();
		boolean status = us.validateUser(email, password);
		if(status) {
			resp.sendRedirect("taskhome");
		}
		else {
			RequestDispatcher rs = req.getRequestDispatcher("login.jsp");
			rs.forward(req, resp);
		}
	}
}

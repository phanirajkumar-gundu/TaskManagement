package com.controller;

import java.io.IOException;

import com.DAO.UserDAO;
import com.model.Users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("request to register user !!!");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String role = req.getParameter("role");
		
		UserDAO us = new UserDAO();
		Users user = new Users(name,email,password,role);
		boolean status = us.registerUser(user);
		if(status) {
			RequestDispatcher rs = req.getRequestDispatcher("login.jsp");
			rs.forward(req,resp);
		}
		else {
			RequestDispatcher rs = req.getRequestDispatcher("register.jsp");
			rs.forward(req,resp);
		}
	}
}

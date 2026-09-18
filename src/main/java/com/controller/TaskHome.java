package com.controller;

import java.io.IOException;
import java.util.List;

import com.DAO.TaskDAO;
import com.model.Tasks;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/taskhome")
public class TaskHome extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("home page called");
		TaskDAO ts = new TaskDAO();
		List<Tasks> allTasks = ts.getAllTasks();
		req.setAttribute("allTasks",allTasks);
		RequestDispatcher rs = req.getRequestDispatcher("task-home.jsp");
		rs.forward(req,resp);
	}
}

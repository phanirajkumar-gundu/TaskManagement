package com.controller;

import java.io.IOException;

import com.DAO.TaskDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteTask")
public class DeleteTask extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("request to delete task !!!");
		int taskId = Integer.parseInt(req.getParameter("taskId"));
		TaskDAO dao = new TaskDAO();
		boolean status = dao.deleteUser(taskId);
		if(status) {
			resp.sendRedirect("taskhome");
		}
	}
}

package com.controller;

import java.io.IOException;

import com.DAO.TaskDAO;
import com.model.Tasks;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/createTask")
public class CreateTask extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("request to create task");
		String taskName = req.getParameter("taskName");
		String taskDescription = req.getParameter("taskDescription");
		int storyPoints = Integer.parseInt(req.getParameter("storyPoints"));
		String assignedTo = req.getParameter("assignedTo");
		String taskStatus = req.getParameter("taskStatus");
		
		Tasks task = new Tasks(taskName,taskDescription,storyPoints,assignedTo,taskStatus);
		TaskDAO ts = new TaskDAO();
		boolean status = ts.createTask(task);
		if(status) {
			resp.sendRedirect("taskhome");
		}
	}
}

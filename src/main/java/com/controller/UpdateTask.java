package com.controller;

import java.io.IOException;

import com.DAO.TaskDAO;
import com.model.Tasks;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateTask")
public class UpdateTask extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("request came to find task by id!!!");
		int taskId = Integer.parseInt(req.getParameter("taskId"));
		TaskDAO dao = new TaskDAO();
		Tasks task = dao.findTaskById(taskId);
		req.setAttribute("task",task);
		RequestDispatcher rs = req.getRequestDispatcher("update.jsp");
		rs.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("request to update task");
		int taskId = Integer.parseInt(req.getParameter("taskId"));
		String taskName = req.getParameter("taskName");
		String taskDescription = req.getParameter("taskDescription");
		int storyPoints = Integer.parseInt(req.getParameter("storyPoints"));
		String assignedTo = req.getParameter("assignedTo");
		String taskStatus = req.getParameter("taskStatus");
		
		Tasks task = new Tasks(taskName,taskDescription,storyPoints,assignedTo,taskStatus);
		TaskDAO dao = new TaskDAO();
	    //boolean status = dao.createTask(task);
		boolean status = dao.updateTask(task, taskId);
		if(status) {
			resp.sendRedirect("taskhome");
		}
	}
}

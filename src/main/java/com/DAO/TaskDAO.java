package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Tasks;
import com.utility.DBConnection;

public class TaskDAO {
	boolean status = false;
	DBConnection db = new DBConnection();
	Connection con = null;
	public boolean createTask(Tasks task) {
		System.out.println("request to create task !!!");
		String create = "insert into tasks (taskName,taskDescription,storyPoints,assignedTo,taskStatus) values (?,?,?,?,?)";
		try {
			con = db.getConnection();
			PreparedStatement ps = con.prepareStatement(create);
			ps.setString(1, task.getTaskName());
			ps.setString(2, task.getTaskDescription());
			ps.setInt(3, task.getStoryPoints());
			ps.setString(4, task.getAssignedTo());
			ps.setString(5, task.getTaskStatus());
			int n = ps.executeUpdate();
			if(n > 0) {
				status = true;
				System.out.println("task created successfully !!!");
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public boolean updateTask(Tasks task , int taskId) {
		System.out.println("request to update task !!!");
		String update = "update tasks set taskName = ? , taskDescription = ? , storyPoints = ? , assignedTo = ? , taskStatus = ? where taskId = ?";
		try {
			con = db.getConnection();
			PreparedStatement ps = con.prepareStatement(update);
			ps.setString(1, task.getTaskName());
			ps.setString(2, task.getTaskDescription());
			ps.setInt(3, task.getStoryPoints());
			ps.setString(4, task.getAssignedTo());
			ps.setString(5, task.getTaskStatus());
			ps.setInt(6, taskId);
			int n = ps.executeUpdate();
			if(n > 0) {
				status = true;
				System.out.println("task updated successfully !!!");
			}
		}
		catch(Exception e) {
			
		}
		return status;
	}
	
	public boolean deleteUser(int taskId) {
		System.out.println("request to delete task");
		String delete = "delete from tasks where taskId = ?";
		try {
			con = db.getConnection();
			PreparedStatement ps = con.prepareStatement(delete);
			ps.setInt(1, taskId);
			int n = ps.executeUpdate();
			if(n > 0) {
				System.out.println("deleted successfully !!!");
				status = true;
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public Tasks findTaskById(int taskId) {
		String query = "select * from tasks where taskId = ?";
		con = db.getConnection();
		Tasks task = new Tasks();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, taskId);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				task.setTaskId(rs.getInt("taskId"));
				task.setTaskName(rs.getString("taskName"));
				task.setTaskDescription(rs.getString("taskDescription"));
				task.setStoryPoints(rs.getInt("storyPoints"));
				task.setAssignedTo(rs.getString("assignedTo"));
				task.setTaskStatus(rs.getString("taskStatus"));
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return task;
	}
	
	public List<Tasks> getAllTasks(){
		
		String query = "select * from tasks";
		con = db.getConnection();
		List<Tasks> list = new ArrayList<>();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Tasks task = new Tasks();
				task.setTaskId(rs.getInt("taskId"));
				task.setTaskName(rs.getString("taskName"));
				task.setTaskDescription(rs.getString("taskDescription"));
				task.setStoryPoints(rs.getInt("storyPoints"));
				task.setAssignedTo(rs.getString("assignedTo"));
				task.setTaskStatus(rs.getString("taskStatus"));
				list.add(task);
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
}

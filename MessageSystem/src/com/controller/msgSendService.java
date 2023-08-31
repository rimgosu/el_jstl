package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.ICommand;
import com.model.MessageDAO;
import com.model.MessageDTO;

public class msgSendService implements ICommand {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		MessageDAO dao = new MessageDAO();
		MessageDTO dto = new MessageDTO(0, name, email, message, null);
		
		int cnt = dao.send(dto);
		
		return "main.jsp#two";
	}
}

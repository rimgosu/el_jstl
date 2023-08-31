package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;

public class logoutService implements ICommand {

	public String execute (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("로그아웃 서비스 실행");
		HttpSession session = request.getSession();
		session.removeAttribute("info");
		return "main.jsp";
	}
}

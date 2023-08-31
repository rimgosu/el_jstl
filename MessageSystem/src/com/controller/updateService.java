package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class updateService implements ICommand {
	public String execute (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("회원정보 수정 서비스 실행");
		
		HttpSession session = request.getSession();

		MemberDTO _dto = (MemberDTO) session.getAttribute("info");
		String email = _dto.getEmail();
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");

		// System.out.println(email + "/" + pw + "/" + phone + "/" + addr);

		MemberDTO dto = new MemberDTO(email, pw, phone, addr);
		System.out.println(dto.toString());

		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(dto);

		if (cnt > 0) {
			System.out.println("회원정보수정 성공!");
		} else {
			System.out.println("회원정보수정 실패..");
		}

		return "main.jsp";
	}
	

}

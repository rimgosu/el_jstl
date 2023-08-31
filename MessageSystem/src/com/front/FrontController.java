package com.front;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.JoinService;
import com.controller.LoginService;
import com.controller.MsgAllDelete;
import com.controller.MsgDelete;
import com.controller.logoutService;
import com.controller.msgSendService;
import com.controller.updateService;
import com.model.MemberDAO;
import com.model.MemberDTO;
import com.model.MessageDAO;
import com.model.MessageDTO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	/*
	 * 싱글턴 패턴
	 */
	HashMap<String, ICommand> map = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		// 서블릿 객채 생성
		// 생성자 느낌, 서블릿 코드 실행되면 삭제되는 생명주기를 가짐
		super.init();
		map.put("JoinService.do", new JoinService());
		map.put("LoginService.do", new LoginService());
		map.put("logoutService.do", new logoutService());
		map.put("updateService.do", new updateService());
		map.put("msgSendService.do", new msgSendService());
		map.put("MsgAllDelete.do", new MsgAllDelete());
		map.put("MsgDelete.do", new MsgDelete());
		
		
	}


	private static final long serialVersionUID = 1L;

	
	/*
	 * 나누어져있는 서블릿들을 하나의 서블릿으로 담는다!
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("프론트 컨트롤러 실행!");
		
		// 1. client가 요청한 URL 가져오기
		String requestURI = request.getRequestURI();
		System.out.println(requestURI);

		/*
		 * 2. Context Path (시작 주소) http://localhost:8099/MessageSystem/LoginService.do
		 * context-path : /MessageSystem
		 */
		String contextPath = request.getContextPath();
		System.out.println(contextPath);

		/*
		 * 3. client 요청 부분만 분리 contextPath.length() + 1 로 /MessageSystem/ 까지 처리
		 */
		String command = requestURI.substring(contextPath.length() + 1);
		System.out.println(command);

		
		// 중복된 코드 리팩토링
		request.setCharacterEncoding("utf-8");
		
		ICommand service = null;
		service = map.get(command);
		String moveUrl = service.execute(request, response);
		response.sendRedirect(moveUrl);

	}

	
}
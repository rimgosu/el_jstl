<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 스크립트릿과 표현식을 사용해서 input에 입력한
		좋아하는 음식을 웹페이지에 표현하시오 -->
	<%
		request.setCharacterEncoding("utf-8");
		String a = request.getParameter("food");
		
	
	%>
	<%= a %>
	<hr>
	${param.food} <br>
	${param["food"] } <br> 
	<hr>
	${paramValues.fish[0]} 
	${paramValues.fish[1]} 
	${paramValues.fish[2]} 
	${paramValues.fish[3]} 
</body>
</html>
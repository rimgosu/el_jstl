<%@page import="com.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<%-- session에 저장된 id라는 이름의 값을 웹페이지에 표현하시오 --%>
	<%
	session.setAttribute("id", "hodoodady");
	pageContext.setAttribute("num", 10);
	pageContext.setAttribute("isCheck", true);
	%>

	<%--
		☆☆☆☆☆☆☆☆☆☆
		☆☆ 1번주제 ☆☆
		☆☆☆☆☆☆☆☆☆☆
		EL의 조건
		- EL은 java의 저장된 아무 변수의 값을 꺼내서 쓸 수 있는 것이 아니라
		 Scope에 저장된 값만 꺼내서 사용할 수 있다
		 ※ Scope영역이란 - page, request, session, application

 --%>
	<%-- 세션에 있는 값 바로 꺼내서 편리하게 쓸 수 있음 --%>
	<br> ${id}
	<br> ${num }
	<br> ${num +10}
	<br> ${num -5}
	<br> ${num *3 }
	<br> ${num /2 } ${num div 2 }
	<br> ${num %3} ${num mod 3}
	<br> ${num >5 && num > 3 }
	<br> ${num >5 and num > 3 }
	<br> ${num >5 || num > 3 }
	<br> ${num >5 or num > 3 }
	<br> ${isCheck }
	<br> ${!isCheck } ${not isCheck}
	<br> ${num <3 } ${num lt 3 }
	<br> ${num >20 } ${num gt 20 }
	<br> ${num <=3 } ${num le 3}
	<br> ${num >=20 } ${num ge 20 }
	<br> ${num == 10 } ${num eq 10}
	<br> ${num != 10 } ${num ne 10}
	<hr>






	<%-- 
		☆☆☆☆☆☆☆☆☆☆
		☆☆ 2번주제 ☆☆
		☆☆☆☆☆☆☆☆☆☆
		EL에서 DTO, VO를 가져오면 어떻게 가져올까?
 --%>

	<%
	MemberDTO dto = new MemberDTO("pbk", "1234", "호두아빠", "광주");
	pageContext.setAttribute("dto", dto);
	%>
	<%-- page영역에 저장된 dto의 아이디 값을 표현식을 사용하여 웹페이지에 표현하시오 --%>
	<%-- 1번방법 --%>
	<%
	MemberDTO a = (MemberDTO) pageContext.getAttribute("dto");
	%>
	<%=a.getId()%>
	<%-- 2번방법 --%>
	<%-- 주의※ dto의 getter 매소드를 쓰는거와 동일.
		 만약 getter 매소드 없었다면 아래와 같은 방법 못씀 --%>
	${dto.id } ${dto.pw } ${dto.nick } ${dto.addr }
	<hr>



	<%-- 
		☆☆☆☆☆☆☆☆☆☆
		☆☆ 3번주제 ☆☆
		☆☆☆☆☆☆☆☆☆☆
	 	el로 없는값을 가져오면 어케될까? 
 	--%>
	<%-- : 암것도 안나온다 --%>
	${good }

	<%-- empty --%>
	${empty good } ${not empty good }




	<%-- 
		☆☆☆☆☆☆☆☆☆☆
		☆☆ 4번주제 ☆☆
		☆☆☆☆☆☆☆☆☆☆
		el 키가 똑같다면? 
		
		찾는 순서:
		page => request => session => application
		
		그런데 내가 EL에서 특정 영역에서만 찾고자할 때
		(ex. 세션에서만 검색했으면 좋겠다) 
		name 앞에 특정영역 Scope를 붙여준다.
	--%>
	<%
	
		pageContext.setAttribute("name", "박병관");
		request.setAttribute("name", "김미희");
		session.setAttribute("name", "황해도");
		application.setAttribute("name", "조준용");
	
	%>
	${sessionScope.name }

</body>
</html>
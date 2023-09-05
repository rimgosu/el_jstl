<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%

	ArrayList<String> idol = new ArrayList<>();
	idol.add("제이홉");
	idol.add("지수");
	idol.add("제니");
	idol.add("로제");
	idol.add("리사");
	pageContext.setAttribute("idol", idol);
	

%>

	<!-- for l in lst: 가능, items, var -->
	<c:forEach items="${idol}" var="name">
	
		${name }
	
	</c:forEach>

	<hr>






















	<%
	
	MemberDTO dtol1 = new MemberDTO("pbk", "1234", "호두아빠", "광주");
	MemberDTO dtol2 = new MemberDTO("user2", "5678", "둘리", "서울");
	MemberDTO dtol3 = new MemberDTO("admin", "9876", "또치", "부산");
	MemberDTO dtol4 = new MemberDTO("guest", "0000", "고길동", "대전");
	MemberDTO dtol5 = new MemberDTO("tester", "5555", "마이콜", "인천");
	
	ArrayList<MemberDTO> list = new ArrayList<>();
	list.add(dtol1);
	list.add(dtol2);
	list.add(dtol3);
	list.add(dtol4);
	list.add(dtol5);
	
	pageContext.setAttribute("list", list);
%>

	<table border="1px">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>닉네임</td>
			<td>주소</td>
		</tr>
		<!-- 여기 아래에 jstl을 통해서 list 안에 있는 회원의 정보를 출력 -->
		
		
		<c:forEach var="i" begin="0" end="${list.size()-1}" step="1">
		
			<tr>
				<td>${i+1 }</td>
				<td>${list[i].id }</td>
				<td>${list[i].getPw() }</td>
				<td>${list[i].getNick() }</td>
				<td>${list[i].getAddr() }</td>
			</tr>
			
		
		</c:forEach>
	</table>
	
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- 병관쌤 풀이 -->
	<table border="1px">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>닉네임</td>
			<td>주소</td>
		</tr>
		<c:set var="i" value="1"></c:set>
		<c:forEach items="${list }" var="dto">
		
			<tr>
				<td>${i }</td>
				<td>${dto.id }</td>
				<td>${dto.pw }</td>
				<td>${dto.nick }</td>
				<td>${dto.addr }</td>
			</tr>
			
			<c:set var="i" value="${i+1 }"></c:set>
			
		
		</c:forEach>
		
		
		
		
		<!-- 파이썬 enumerate 같은 용도로 쓸 수 있다.
			 varStatus="roop", roop.count -->
		
		<c:forEach items="${list }" var="dto" varStatus="roop">
		
			<tr>
				<td>${roop.count }</td>
				<td>${dto.id }</td>
				<td>${dto.pw }</td>
				<td>${dto.nick }</td>
				<td>${dto.addr }</td>
			</tr>
			
		
		</c:forEach>
	</table>
	


</body>
</html>
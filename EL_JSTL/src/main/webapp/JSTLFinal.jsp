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
	idol.add("����ȩ");
	idol.add("����");
	idol.add("����");
	idol.add("����");
	idol.add("����");
	pageContext.setAttribute("idol", idol);
	

%>

	<!-- for l in lst: ����, items, var -->
	<c:forEach items="${idol}" var="name">
	
		${name }
	
	</c:forEach>

	<hr>






















	<%
	
	MemberDTO dtol1 = new MemberDTO("pbk", "1234", "ȣ�ξƺ�", "����");
	MemberDTO dtol2 = new MemberDTO("user2", "5678", "�Ѹ�", "����");
	MemberDTO dtol3 = new MemberDTO("admin", "9876", "��ġ", "�λ�");
	MemberDTO dtol4 = new MemberDTO("guest", "0000", "��浿", "����");
	MemberDTO dtol5 = new MemberDTO("tester", "5555", "������", "��õ");
	
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
			<td>��ȣ</td>
			<td>���̵�</td>
			<td>��й�ȣ</td>
			<td>�г���</td>
			<td>�ּ�</td>
		</tr>
		<!-- ���� �Ʒ��� jstl�� ���ؼ� list �ȿ� �ִ� ȸ���� ������ ��� -->
		
		
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- ������ Ǯ�� -->
	<table border="1px">
		<tr>
			<td>��ȣ</td>
			<td>���̵�</td>
			<td>��й�ȣ</td>
			<td>�г���</td>
			<td>�ּ�</td>
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
		
		
		
		
		<!-- ���̽� enumerate ���� �뵵�� �� �� �ִ�.
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
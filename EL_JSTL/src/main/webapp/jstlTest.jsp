<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- jstl�� ����ϱ� ���� taglib �߰�. 
	 jstl-1.2.jar�� �ٿ�ε� �޾ƾ��Ѵ�. 
	 "c" : ��Ī -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- jstl ����ϱ� -->
	<!-- page ������ �� �ֱ�.
		 scope="page" : �̰� �⺻���� -->
	<%-- <% pageContext.setAttribute("num", "100") %> --%>
	<c:set var="num" value="100"/>
	<c:set var="num1" value="100" scope="session"/>
	<c:set var="num2" value="100" scope="application"/>
	<c:set var="num3" value="100" scope="request"/>
	${num }
	${num1 }
	${num2 }
	${num3 }
	<c:out value="${num }"/>
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<c:set var="text" value="<script>alert('����������������')</script>" />
	<%-- ��ũ��Ʈ ���� ��� ���� --%>
	<%-- ${text } --%>
	<c:out value="${text} " /> <!-- ����� -->
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- jstl�� Ȱ���� ���ǹ� -->
	<!-- num�� ���� 100���� ũ�� 100���� Ů�ϴ� �ƴϸ� �۽��ϴٸ� ��� -->
	<c:if test="${num ge 100 }">
		100���� ũ�ų� �����ϴ�.
	</c:if>
	<c:if test="${num lt 100 }">
		100���� �۽��ϴ�.
	</c:if>
	<br>
	
	
	<c:set var="time" value="����"/>
	<c:choose>
	
		<c:when test="${time == '��ħ' }">
			�佺Ʈ
		</c:when>
		<c:when test="${time == '����' }">
			�����
		</c:when>
		<c:when test="${time == '����' }">
			����
		</c:when>
	
	</c:choose>
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- jstl �ݺ��� -->
	<!-- i�� pageContext�� ����ȴ� -->
	<c:forEach var="i" begin="1" end="10" step="1">
		���� ${i } <br>
	</c:forEach>
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- ����! -->
	<table border="1px" style="background-color: green;">
		<c:forEach var="i" begin="2" end="5" step="1">
		<tr>
			<c:forEach var="j" begin="1" end="9" step="1">
				<td>${i}*${j}=${ i*j}</td>
				
			
			</c:forEach>
			</tr>
		</c:forEach>
	</table>
	
	

</body>
</html>
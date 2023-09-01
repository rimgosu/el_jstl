<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- jstl을 사용하기 위한 taglib 추가. 
	 jstl-1.2.jar도 다운로드 받아야한다. 
	 "c" : 별칭 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- jstl 사용하기 -->
	<!-- page 영역에 값 넣기.
		 scope="page" : 이게 기본값임 -->
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<c:set var="text" value="<script>alert('ㅋㅋㅋㅋㅋㅋㅋㅋ')</script>" />
	<%-- 스크립트 공격 방어 못함 --%>
	<%-- ${text } --%>
	<c:out value="${text} " /> <!-- 방어함 -->
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- jstl을 활용한 조건문 -->
	<!-- num의 값이 100보다 크면 100보다 큽니다 아니면 작습니다를 출력 -->
	<c:if test="${num ge 100 }">
		100보다 크거나 같습니다.
	</c:if>
	<c:if test="${num lt 100 }">
		100보다 작습니다.
	</c:if>
	<br>
	
	
	<c:set var="time" value="점심"/>
	<c:choose>
	
		<c:when test="${time == '아침' }">
			토스트
		</c:when>
		<c:when test="${time == '점심' }">
			비빔밥
		</c:when>
		<c:when test="${time == '저녁' }">
			족발
		</c:when>
	
	</c:choose>
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- jstl 반복문 -->
	<!-- i는 pageContext에 저장된다 -->
	<c:forEach var="i" begin="1" end="10" step="1">
		하하 ${i } <br>
	</c:forEach>
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- 문제! -->
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
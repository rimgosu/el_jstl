<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- jstl聖 紫遂馬奄 是廃 taglib 蓄亜. 
	 jstl-1.2.jar亀 陥錘稽球 閤焼醤廃陥. 
	 "c" : 紺暢 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- jstl 紫遂馬奄 -->
	<!-- page 慎蝕拭 葵 隔奄.
		 scope="page" : 戚惟 奄沙葵績 -->
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<c:set var="text" value="<script>alert('せせせせせせせせ')</script>" />
	<%-- 什滴験闘 因維 号嬢 公敗 --%>
	<%-- ${text } --%>
	<c:out value="${text} " /> <!-- 号嬢敗 -->
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- jstl聖 醗遂廃 繕闇庚 -->
	<!-- num税 葵戚 100左陥 滴檎 100左陥 溺艦陥 焼艦檎 拙柔艦陥研 窒径 -->
	<c:if test="${num ge 100 }">
		100左陥 滴暗蟹 旭柔艦陥.
	</c:if>
	<c:if test="${num lt 100 }">
		100左陥 拙柔艦陥.
	</c:if>
	<br>
	
	
	<c:set var="time" value="繊宿"/>
	<c:choose>
	
		<c:when test="${time == '焼徴' }">
			塘什闘
		</c:when>
		<c:when test="${time == '繊宿' }">
			搾策剛
		</c:when>
		<c:when test="${time == '煽梶' }">
			膳降
		</c:when>
	
	</c:choose>
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- jstl 鋼差庚 -->
	<!-- i澗 pageContext拭 煽舌吉陥 -->
	<c:forEach var="i" begin="1" end="10" step="1">
		馬馬 ${i } <br>
	</c:forEach>
	<hr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- 庚薦! -->
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
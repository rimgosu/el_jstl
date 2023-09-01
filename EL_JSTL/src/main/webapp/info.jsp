<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp" method="post">
		내가 좋아하는 음식
		<input type="text" name="food"> <br>
		좋아하는 생선 :
		참치 <input type="checkbox" name="fish" value="참치">
		전어 <input type="checkbox" name="fish" value="전어">
		광어 <input type="checkbox" name="fish" value="광어">
		우럭 <input type="checkbox" name="fish" value="우럭"> <br>
		<input type="submit">
	
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>이름 입력하기</h2>
	<form name="myform" action="form02.jsp" method="get"> <!-- form을 구분짓기 위해 name 사용 --> 
		이름 : <input type="text" name="name"><br>
		<input type="submit" value="보내기">
	</form>
</body>
</html>
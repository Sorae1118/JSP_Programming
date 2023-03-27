<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="JSP 연습 페이지" %>
<%@ page import="java.time.*" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지시자 연습</title>
</head>
<body>
	<h2>반가워요!</h2>
	<hr>
	<% out.println("오늘의 날짜 : " + LocalDate.now()); %><br>
	<% out.println("지금의 시간 : " + LocalTime.now()); %><br>
	<%=getServletInfo() %> <!-- info 출력방법 -->
</body>
</html>
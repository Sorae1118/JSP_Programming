<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String score1 = request.getParameter("korean");
		String score2 = request.getParameter("math");
		String score3 = request.getParameter("english");
		
		if(score1 == null || score1.equals("null"))
			score1 = "입력없음"; //널값 처리가 안됨
		
		out.println("국어점수 : " + score1);
		out.println("수학점수 : " + score2);
		out.println("영어점수 : " + score3);
	%>
</body>
</html>
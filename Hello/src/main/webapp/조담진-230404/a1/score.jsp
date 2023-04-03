<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>score result</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		int sum = kor + eng + math;
		float avg = sum/3.0f;
	%>
	<div style="text-align: center; padding: 100px">
		<h1>계산 결과</h1> <br>
		국어 : <%= kor %> <br>
		영어 : <%= eng %> <br>
		수학 : <%= math %> <br>
		<br>
		총합 점수 : <%= sum %> <br>
		평균 점수 : <%= String.format("%.2f", avg) %>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 정보</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String myName = request.getParameter("myname");
		String gender = request.getParameter("gender");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String[] lang = request.getParameterValues("lang");
		String[] hobby = request.getParameterValues("hobby");
		String memo = request.getParameter("memo");
	%>
	<div style="text-align: center; padding: 100px">
		<h1>나의 정보</h1><br>
		아이디 : <%= id %> <br>
		비밀번호 : <%= pwd %> <br>
		이름 : <%= myName %> <br>
		성별 : <%= gender %> <br>
		이메일 : <%= email1 + "@" + email2 %><br>
		개발기술 : 
		<% for(String item:lang) { %>
			<%= item + " " %>
		<% } %><br>
		취미 :
		<% for(String item:hobby) { %>
			<%= item + " " %>
		<% } %><br>
		자기소개 : <%= memo %><br>
	</div>
</body>
</html>
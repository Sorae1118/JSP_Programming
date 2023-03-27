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
	
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String address = request.getParameter("location");
		String memo = request.getParameter("memo");
		
		out.println("아이디 : " + id + "<br>");
		out.println("비밀번호 : " + pwd + "<br>");
		out.println("성별 : " + gender + "<br>");
		out.println("주소 : " + address + "<br>");
		out.println("메모 : " + memo + "<br>");
	%>
	프로토콜 : <%=request.getProtocol() %><br>
	<% response.sendRedirect("hobby.hyml"); %>
		
</body>
</html>
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
		
		String[] lang = request.getParameterValues("lang");
		String[] hobby = request.getParameterValues("hobby");
	%>
	
	- 언어 - <br>
	<%
		
			for(String l:lang) {
				out.println(l + "<br>");
			}
	%>
	- 취미 - <br>
	<%
			for(String h:hobby) {
				out.println(h + "<br>");
			}
	%>
</body>
</html>
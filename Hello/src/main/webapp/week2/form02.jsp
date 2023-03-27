<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	클라이언트에서 이름을 보내옵니다! <br>
	<%	// 인코딩방식 변경 (한글 깨짐 방지)
		request.setCharacterEncoding("utf-8"); //post 방식일 때는 인코딩 방식을 utf-8로 지정해야 한글이 깨지지 않음
		//클라이언트에서 보낸 데이터를 받기
		String name = request.getParameter("name"); 
		out.println(name);
	%>
</body>
</html>
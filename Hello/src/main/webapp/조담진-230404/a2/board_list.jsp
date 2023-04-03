<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>    
<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style2.css" type="text/css">
<title>게시판 목록</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String textarea = request.getParameter("textarea");
		
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		String sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(timestamp);
		
		System.out.println(sdf);
	%>
<form action="" method="post">
	<div class="title">
		<strong>게시판 목록</strong>
	</div>
	<div>
		<table class="blueone">
		<thead>
		<tr>
			<th>제목</th> 
			<th>작성자</th>
			<th>날짜</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td><%= title %></td>
			<td><%= name %></td>
			<td><%= sdf %></td>
		</tr>
		</tbody>
		<tfoot>
		<tr>
			<td id="textarea" colspan="3"><%= textarea %></td>
		</tr>
		</tfoot>
		</table>
	</div>
</form>
</body>
</html>
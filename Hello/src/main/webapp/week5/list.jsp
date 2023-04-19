<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 목록</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
<%
	ResultSet rs = null;
	PreparedStatement pstmt = null; 
%>
<%
	Class.forName("org.mariadb.jdbc.Driver");
	System.out.println("로드 이상 없음");

	// 로컬DB 정보
	String url = "jdbc:mariadb://localhost:3306/jsp_wep";
	String user = "damjin";
	String passwd = "1234";
	System.out.println("DB 정보 이상 없음");
	
	try(
		Connection conn = DriverManager.getConnection(url, user, passwd);
	){
		String query = "select * from info";
		
		pstmt = conn.prepareStatement(query);
		rs = pstmt.executeQuery();
		
		System.out.println("조회 성공");
		
	}catch(Exception e) {
		e.printStackTrace();
		System.out.println("연결 실패!");
	}
%>
<div id="wrapper" class="divided">
<section class="wrapper style1 align-center">
	<div class="inner">
		<div class="index align-left">
		<section>
			<header>
				<h3>Personal information</h3>
			</header>
			<div class="content">
				<h4>List</h4>
				<div class="table-wrapper">
					<table>
					<thead>
					<tr>
						<th>Student ID</th> 
						<th>Name</th>
						<th>Grade</th>
						<th>Selection</th>
					</tr>
					</thead>
					<tbody>
					<% while(rs.next()) {%>
					<tr>
						<td><a href='update_form.jsp?id=<%=rs.getString("id") %>'><%=rs.getString("id") %> </a></td>
						<td><%= rs.getString("name") %></td>
						<td><%= rs.getString("grade") %></td>
						<td><%= rs.getString("lang") %></td>
					</tr>
					<% } %>
					
					</tbody>
					</table>
				</div>
				<div>
					<button onclick="location.href='index.jsp'">Main</button >
				</div>
			</div>
		</section>
		</div>
	</div>
</section>
</div>
</body>
</html>
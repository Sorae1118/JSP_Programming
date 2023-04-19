<%@page import="org.apache.catalina.connector.Response"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Registration Success</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
<%
	/*
		디버깅 방법
		- 콘솔을 활용하여 값이 잘 전송됐는지 출력해본다. (개인적으로 이 방법이 아주 유용함. 부분적으로 오류확인이 가능)
		- DB 정보가 정상적으로 됐는지 확인하려면 마찬가지로 콘솔을 확인한다.
		- 해결이 힘들 경우 오류 정보를 복사하여 구글에 검색한다.
		
	*/
	// 인코딩
	request.setCharacterEncoding("utf-8");

	// 입력데이터 받아서 저장
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String lang = request.getParameter("lang");
	
	// JDBC 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	System.out.println("로드 이상 없음");
	
	// 로컬DB 정보
	String url = "jdbc:mariadb://localhost:3306/jsp_wep";
	String user = "damjin";
	String passwd = "1234";
	System.out.println("DB 정보 이상 없음");
	
	// 커넥션 생성 및 pstmt 객체 생성
	try(
		Connection conn = DriverManager.getConnection(url, user, passwd);
	){
		String query = "insert into info(id, name, grade, lang) values (?, ?, ?, ?)";
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		System.out.println("pstmt 확인 ");
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, grade);
		pstmt.setString(4, lang);
		/* pstmt.executeUpdate(); */
		System.out.println("insert 성공");
		
	// executeUpdate 두 번 호출하면 데이터는 입력되지만 Duplicate entry 에러생김. 일단 주석처리
		int i = pstmt.executeUpdate();
		if(i == 1) {
			response.sendRedirect("list.jsp");
		}

	}catch(Exception e) {
		e.printStackTrace();
		System.out.println("연결 실패!");
	}
%>
<body class="is-preload">
	<div id="wrapper" class="divided">
		<section class="wrapper style1 align-center">
			<div class="inner">
			<section>
				<header>
					<h1>Success!</h1>
				</header>
				<div class="content">
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
					<tr>
						<td><%= id %></td>
						<td><%= name %></td>
						<td><%= grade %></td>
						<td><%= lang %></td>
					</tr>
					</tbody>
					</table>
				</div>
			</section>
			</div>
			<div>
				<button onclick="location.href='list.jsp'">Go to List</button >
			</div>
		</section>
	</div>
</body>
</html>
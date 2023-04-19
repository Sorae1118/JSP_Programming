<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
	// 입력데이터 받아서 저장
	String before_id = request.getParameter("before_id");
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
%>
<%
	try(
		Connection conn = DriverManager.getConnection(url, user, passwd);
	){
		String query = "update info " + 
					   "set id = ?, name = ?, grade = ?, lang = ? " + 
					   "where id = '" + before_id + "'";
		System.out.println(query);
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		System.out.println("pstmt 확인 ");
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, grade);
		pstmt.setString(4, lang);
		/* pstmt.executeUpdate(); */
		System.out.println("update 성공");
		
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
 업데이트 내용 : <%= before_id %> <br>
 업데이트 내용 : <%= id %> <br>
 업데이트 내용 : <%= name %> <br>
 업데이트 내용 : <%= grade %> <br>
 업데이트 내용 : <%= lang %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title></title> 
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
</head>
<script>
function btn(){
    alert('계정이 삭제됐습니다.');
}
</script>
<%
	ResultSet rs = null;
	PreparedStatement pstmt = null; 
%>
<%
	request.setCharacterEncoding("utf-8");

	String before_id = request.getParameter("id");
	
	Class.forName("org.mariadb.jdbc.Driver");
	System.out.println("로드 이상 없음");
	
	String url = "jdbc:mariadb://localhost:3306/jsp_wep";
	String user = "damjin";
	String passwd = "1234";
	
	System.out.println("DB 정보 이상 없음");
	
	try(
			Connection conn = DriverManager.getConnection(url, user, passwd);
	) {
		String query = "select * from info where id = '" + before_id + "'";
		pstmt = conn.prepareStatement(query);
		rs = pstmt.executeQuery();
		System.out.println("조회 성공");
		
	}catch(Exception e) {
		e.printStackTrace();
		System.out.println("연결 실패!");
	}
	
	String name = null;
	String grade = null;
	String lang = null;
	
	while(rs.next()) {
		name = rs.getString("name");
		grade = rs.getString("grade");
		lang = rs.getString("lang");
	}
	
%>
<body class="is-preload">
<div id="wrapper" class="divided">
	<section class="wrapper style1 align-center">
		<div class="inner">
			<div class="index align-left">
				<section>
					<header>
						<h3>Personal information <br> Update form</h3>
					</header>
					<div class="content">
						<form action="update_ok.jsp" method="post" name="update">
							<input type="hidden" name="before_id" value="<%= before_id %>">
							<div class="fields">
								<div class="field half">
									<label for="id">Student ID</label>
									<input type="text" name="id" id="id" value="<%= before_id %>" autocomplete='off' required />
								</div>
								<div class="field half">
									<label for="name">Name</label>
									<input type="text" name="name" id="name" value="<%= name %>" autocomplete='off' required>
								</div>
								<div class="field third">
									<input type="radio" id="priority-low" value="1학년" name="grade" checked />
										<label for="priority-low">1 Grade</label>
								</div>
								<div class="field third">
									<input type="radio" id="priority-normal" value="2학년" name="grade" />
									<label for="priority-normal">2 Grade</label>
								</div>
								<div class="field">
									<label for="department">Selection</label>
									<select name="lang" id="department">
										<option value="None">- Category -</option>
										<option value="Java">Java</option>
										<option value="Kotlin">Kotlin</option>
										<option value="Ruby">Ruby</option>
										<option value="JavaScript">JavaScript</option>
									</select>
								</div>
							</div>
							<ul class="actions">
								<li><input type="submit" name="submit" id="submit" value="Modify Information" /></li>
							</ul>
						</form>
						<form action="delete_ok.jsp" onclick="javascript:btn()" method="post" name="delete">
							<input type="hidden" name="before_id" value="<%= before_id %>">
							<ul class="actions">
								<li><input type="submit" name="submit" id="submit" value="Delete Information" /></li>
							</ul>
						</form>
					</div>
				</section>
			</div>
		</div>
	</section>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css" type="text/css">
<title>게시판 입력</title>
</head>
<body>
<form action="board_list.jsp" method="post" name="">
	<div class="board">
		<div class="board_title">
			<strong>자유 게시판</strong> 
			<p>나만의 글을 작성해보세요</p>
		</div>
		<div>
			<div class="board_write">
				<div class="title">
				<dl>
					<dt>제목</dt>
					<dd><input type="text" placeholder="제목 입력" name="title"></dd>
				</dl>
				</div>
				<div class="name">
				<dl>
					<dt>작성자</dt>
					<dd><input type="text" placeholder="글쓴이 입력" name="name"></dd>
				</dl>
				</div>
				<div class="area">
					<textarea placeholder="내용 입력" name="textarea"></textarea>
				</div>
			</div>
		</div>
		<div class="bottom">
			<input class="button" type="submit" value="등록">
		</div>
	</div>
</form>
</body>
</html>
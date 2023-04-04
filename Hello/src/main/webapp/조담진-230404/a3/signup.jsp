<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="index.css" type="text/css">
<title>회원 가입</title>
</head>
<body>
<form action="signup_output.jsp" method="post">
	<div id="title">
		<strong>회원 가입</strong>
	</div>
	<table class="table">
	<thead>
		<tr>
			<th>항목</th>
			<th>선택 및 입력</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="myname"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<input type="radio" value="남자" name="gender" checked>남자
				<input type="radio" value="여자" name="gender">여자
				<input type="radio" value="기타" name="gender">기타
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>
				<input type="text" name="email1">
				<strong>@</strong>
				<select name="email2">
                    <option value="naver.com" selected>naver.com</option>
                    <option value="gmail.com">gmail.com</option>
                    <option value="hanmail.net">hanmail.net</option>
                    <option value="nate.com">nate.com</option>
                </select>
			</td>
		</tr>
		<tr>
			<td>개발기술</td>
			<td>
				<input type="checkbox" name="lang" value="Java">Java
                <input type="checkbox" name="lang" value="JavaScript">JavaScript
                <input type="checkbox" name="lang" value="C++">C++
			</td>
		</tr>
		<tr>
            <td>취미</td>
            <td>
                <select multiple name="hobby">
                    <option value="게임">게임</option>
                    <option value="운동">운동</option>
                    <option value="독서">독서</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
        <tr>
			<td>자기소개</td>
			<td><textarea name="memo" cols="30" rows="5"></textarea></td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="2" style="text-align: center;">
				<input type="submit" value="가입하기">
			</td>
		</tr>
	</tfoot>
	</table>
</form>
</body>
</html>
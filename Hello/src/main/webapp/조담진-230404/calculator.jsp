<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
	<form action="calculator_output.jsp" method="post">
		x : <input type="text" name="x"><br>
		y : <input type="text" name="y"><br>
		<select name="calc">
        	<option value="add" selected>+</option>
       		<option value="sub">-</option>
           	<option value="mul">x</option>
            <option value="div">%</option>
        </select>
		<input type="submit" value="계산하기">
	</form>
</body>
</html>
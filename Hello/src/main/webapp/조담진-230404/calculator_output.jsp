<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
</head>
<body>
	<%
		int x = Integer.parseInt(request.getParameter("x"));
		int y = Integer.parseInt(request.getParameter("y"));
		String calc = request.getParameter("calc");
		System.out.println(calc);
	%>
	<%	if(calc.equals("add")) { %>
		<%= x %> + <%= y %> = <%= x+y %>
	<%	}else if(calc.equals("sub")){ %>
		<%= x %> - <%= y %> = <%= x-y %>
	<%	}else if(calc.equals("mul")){ %>
		<%= x %> x <%= y %> = <%= x*y %>
	<%	}else { %>
		<%= x %> % <%= y %> = <%= x/y %>
	<%	} %>
		
</body>
</html>
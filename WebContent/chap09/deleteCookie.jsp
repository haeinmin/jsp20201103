<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Cookie[] cookies = request.getCookies();
if (cookies != null && cookies.length>0) {
	for (int i=0; i<cookies.length; i++) {
		if (cookies[i].getName().equals("name")) {
			System.out.println(cookies[i].getValue());
			//Cookie cookie = new Cookie("name", "");
			Cookie cookie = (Cookie) cookies[i].clone();
			cookie.setMaxAge(0);
			response.addCookie(cookie);
			
		}
	}
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
remove name cookie
</body>
</html>
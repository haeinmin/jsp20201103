<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap09.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%

String id = request.getParameter("id");
String pw = request.getParameter("pw");

boolean login = false;

if (id != null && pw != null && id.equals(pw)) {
	login = true;
}

//로그인 성공: main.jsp로 redirection
//실패: loginForm.jsp로 redirection
if (login) {
	response.sendRedirect("main.jsp");
	// 세션에 id, pw 속성 (attribute) 추가
	session.setAttribute("user", id);
	
	//rememberme 체크 시 세션 유지하도록
	String rememberme = request.getParameter("remember");
	if (rememberme != null && rememberme.equals("on")) {
		Cookies cookies = new Cookies(request);
		Cookie cookie = cookies.getCookie("JSESSIONID");
		cookie.setMaxAge(24*60*60);
		cookie.setPath(request.getContextPath());
		cookie.setHttpOnly(true);
		response.addCookie(cookie);

		session.setMaxInactiveInterval(24*60*60);
	}

} else {
	response.sendRedirect("loginForm.jsp");
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

</body>
</html>
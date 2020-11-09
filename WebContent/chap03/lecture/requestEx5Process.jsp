<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
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
<%
String gugu = request.getParameter("gugu");

int guguInt = 0;
if (gugu != null ) {
	guguInt = Integer.valueOf(gugu); 
}

%>
gugudan: <br>
<%
for (int i=1; i<=9; i++) {
	out.print(guguInt + "*" + i + "=" + guguInt*i);
%>
<br>
<% } %>

<a href="requestEx5Form.jsp" class="btn btn-warning">go back</a>
</body>
</html>
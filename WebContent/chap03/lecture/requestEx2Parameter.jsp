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

<form> <!-- request로 전송하기 위해 form 안에 넣음 -->
	<input type="text" name="id"/> <br>
	<input type="text" name="pw"/> <br>
	<input type="password" name="pw2" /> <br>
	<input type="number" name="age" value="0"/> <br>
	<input type="date" name="date" />
	<input type="submit" value="전송" /> 
</form>

<%
String val1 = request.getParameter("id");
String val2 = request.getParameter("pw");
String val3 = request.getParameter("pw2");
String val4 = request.getParameter("age");
int val4int = 0;
if (val4 != null) {
	val4int = Integer.valueOf(val4); 
}
String val5 = request.getParameter("date");
%>

id: <%=val1 %> <br>
pw: <%= val2 %> <br>
password: <%=val3 %> <br>
age: <%=val4 %><Br>
date: <%= val5 %>

</body>
</html>
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
<form action="">
	name: <input type="text" name="fname" /> <br>
	age: <input type="number" name="age" /> <br>
	gender: female <input type="radio" name="gender" value="female" />
			male <input type="radio" name="gender" value="male" /> <br>
	food: pizza <input type="checkbox" name="food" value="pizza" />
	   	  burger <input type="checkbox" name="food" value="burger" />
		  icecream <input type="checkbox" name="food" value="icecream" />
		  salmon <input type="checkbox" name="food" value="salmon" /><br>
	<input type="submit" value="transmit" class="btn btn-primary" />
</form>

<%
String name = request.getParameter("fname");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String[] food = request.getParameterValues("food");
%>

name : <%= name %>
age : <%= age %>
gender : <%= gender %>
food : 
<%
if (food != null) {
	for (int i=0;i<food.length; i++) {
	out.print(food[i]);
	if ( i!= food.length-1) {
		out.print(",");
	}
}
}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

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
<h1>좋아하는 음식 선택 </h1>
<form action="elEx8ListView.jsp">
<label for="">딸기 <input type="checkbox" value="berry" name="food" id="" /></label>
<label for="">커피 <input type="checkbox" value="coffee" name="food" id="" /></label>
<label for="">사과 <input type="checkbox" value="apple" name="food" id="" /></label>
<label for="">피자 <input type="checkbox" value="pizza" name="food" id="" /></label>
<label for="">키위 <input type="checkbox" value="kiwi" name="food" id="" /></label>
<input type="submit" value="go" />
</form>
</body>
</html>
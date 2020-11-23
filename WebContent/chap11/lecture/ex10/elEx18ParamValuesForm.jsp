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
<form action="elEx18ParamValuesView.jsp">
<label for=""><input type="checkbox" name="food" value="berry" />berry</label>
<label for=""><input type="checkbox" name="food" value="kiwi" />kiwi</label>
<label for=""><input type="checkbox" name="food" value="apple" />apple</label>
<label for=""><input type="checkbox" name="food" value="peach" />peach</label>
<label for=""><input type="checkbox" name="food" value="plum" />plum</label>
<br />
<input type="submit" value="go" />
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Calendar Class</title>
</head>
<body>
<% java.util.Calendar cal = java.util.Calendar.getInstance(); %>
today is
<%= cal.get(java.util.Calendar.YEAR) %>
<%= cal.get(java.util.Calendar.MONTH)+1 %>
<%= cal.get(java.util.Calendar.DATE) %>
</body>
</html>
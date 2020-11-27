<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script>
$(function() {
	$("#modify-btn").click(function() {
		$("#title-input").removeAttr("readonly");
		$("#body-textarea").removeAttr("readonly");
		$(this).hide();
		$("#submit-btn").removeAttr("hidden");
	});
});

</script>
</head>
<body>
<c:url value="/sample2/modify" var="modifyUrl">
<c:param name="idx">${param.idx }</c:param>
</c:url>
<div class="container">
<h1>show posts</h1>
<form action="${modifyUrl}">
	subject: <input id="title-input" type="text" readonly value="${post.title }" /> <br />
	<textarea id="body-textarea" readonly cols="30" rows="5">${post.body }</textarea>
	<br />
	<input type="submit" id="submit-btn" hidden value="go" class="btn btn-secondary" />
</form>
	<button class="btn btn-secondary" id="modify-btn">modify</button>
	

</div>
</body>
</html>
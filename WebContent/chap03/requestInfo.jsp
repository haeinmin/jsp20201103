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
<title>client & server info</title>
</head>
<body>
client ip = <%=request.getRemoteAddr() %> <br>
requested info length = <%=request.getContentLength() %> <br>
requested info encoding = <%=request.getCharacterEncoding() %> <br>
requested info content type = <%=request.getContentType() %> <br>
requested info protocol = <%=request.getProtocol() %> <br>
requested info transmit method = <%=request.getMethod() %> <br>
requested uri = <%=request.getRequestURI() %> <br>
context path = <%=request.getContextPath() %> <br>
server name = <%=request.getServerName() %> <br>
server port = <%=request.getServerPort() %> <br>
</body>
</html>
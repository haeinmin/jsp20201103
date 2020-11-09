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
Set<Integer> lotto = new HashSet<>();
while (lotto.size() < 6) {
	lotto.add((int) ((Math.random()*45)+1));
}

out.print("당첨번호:");
out.print(lotto);
out.print("<br>");

String[] nums = request.getParameterValues("num");
int count = 0;

out.print("선택한 번호: ");

if (nums != null) {
	for (int i=0;i<nums.length; i++) {
		String num = nums[i].replaceAll("n","");
		out.print(num);
		
		if ( i!= nums.length-1) {
			out.print(",");
		} 

		int a = Integer.parseInt(num);
		
		if (lotto.contains(a)) {
			count++;
		}
	}
%>
<br>
<%
out.print("일치하는 개수: " + count + "개");
}


%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String job = request.getParameter("job");
String sql = "SELECT max(salary), min(salary), avg(salary)"
			+ ", sum(salary)"
			+ " FROM employee"
			+ " WHERE job = '" + job.toUpperCase() + "'";
//1.jdbc 드라이버 로딩
Class.forName("oracle.jdbc.driver.OracleDriver");

//2.데이터베이스 커넥션 구함
Connection con = null;
Statement stmt = null;
ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
con = DriverManager.getConnection(url, id, pw);

//3. statement
stmt = con.createStatement();

//4. query
rs = stmt.executeQuery(sql);

//5. 처리

int max=0;
int min=0;
double avg=0.0;
int sum=0;

if (rs.next()) {
	max = rs.getInt(1);
	min = rs.getInt(2);
	avg = rs.getDouble(3);
	sum = rs.getInt(4);
}

//6. statment close
stmt.close();

//7. connection close
con.close();
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
<h1>최대: <%=max %></h1>
<h1>최소: <%=min %></h1>
<h1>평균: <%=avg %></h1>
<h1>합계: <%=sum %></h1>
</body>
</html>
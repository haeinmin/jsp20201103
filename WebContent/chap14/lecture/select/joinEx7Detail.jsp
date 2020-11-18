<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "chap14.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String eno = request.getParameter("eno");
String sql = "SELECT e1.eno, e1.ename, e1.hiredate, e1.salary, d.dname, e1.job, s.grade, e2.ename" +
			 " FROM employee e1, department d, employee e2, salgrade s" +
			 " WHERE e1.manager=e2.eno(+) and e1.dno=d.dno" +
			 " AND e1.salary between s.losal and s.hisal and e1.eno=?";
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
stmt.setInt(1, Integer.valueOf(eno));
ResultSet rs = stmt.executeQuery();

Employee emp = null;
if (rs.next()) {
/*
	emp = new Employee();
	emp.setEno(rs.getInt(1));
	emp.setEname(rs.getString(2));
	emp.setHireDate(rs.getTimestamp(3).toLocalDateTime());
	emp.setSalary(rs.getInt(4));
	emp.setDname(rs.getString(5));
	emp.setJob(rs.getString(6));
*/	
	int col=1;
	emp = new Employee();
	emp.setEno(rs.getInt(col++));
	emp.setEname(rs.getString(col++));
	emp.setHireDate(rs.getTimestamp(col++).toLocalDateTime());
	emp.setSalary(rs.getInt(col++));
	emp.setDname(rs.getString(col++));
	emp.setJob(rs.getString(col++));
	emp.setGrade(rs.getInt(col++));
	emp.setManager(rs.getString(col++));
}

stmt.close();
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
<div class="container">
	<h1>사원 정보</h1>
	<ul>
		<li>사번: <%=emp.getEno() %></li>
		<li>이름: <%= emp.getEname() %></li>
		<li>입사일: <%=emp.getHireDate() %></li>
		<li>월급: <%=emp.getSalary() %></li>
		<li>부서: <%=emp.getDname() %>
		<li>업무: <%=emp.getJob() %></li>
		<li>봉급 등급: <%=emp.getGrade() %></li>
		<li>직속 상사: <%=emp.getManager() %></li>
	</ul>
</div>
</body>
</html>
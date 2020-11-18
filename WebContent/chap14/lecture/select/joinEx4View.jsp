<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
class Emp {
	  private String ename;
	  
	  public void setEname(String ename) {
	    this.ename = ename; 
	  }

	  public String getEname() {
	    return this.ename; 
	  }

	}

String salgrade = request.getParameter("salgrade");
String sql = "select e.ename from employee e, salgrade s where e.salary between s.losal and s.hisal and s.grade=?";
List<Emp> list = new ArrayList<>();

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
//Statement stmt = con.createStatement();
PreparedStatement stmt = con.prepareStatement(sql);

stmt.setInt(1, Integer.parseInt(salgrade));

ResultSet rs = stmt.executeQuery();

while(rs.next()) {
	Emp emp = new Emp();
	emp.setEname(rs.getString(1));
	list.add(emp);
}

stmt.close();
con.close();


%>
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
<ul>
<h1>등급이 <%=salgrade %>인 사원들은 다음과 같습니다.</h1>
<% for (Emp e : list) { %>
<li><%=e.getEname() %></li>
<%} %>
</ul>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
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

String mName = request.getParameter("mName");
String sql = "select e1.ename from employee e1, employee e2 where e1.manager=e2.eno and e2.ename=?";
List<Emp> list = new ArrayList<>();

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
//Statement stmt = con.createStatement();
PreparedStatement stmt = con.prepareStatement(sql);

stmt.setString(1, mName);

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
<h1><%=mName %>의 부하직원은
</h1>
<% for (Emp e : list) { %>
<li><%=e.getEname() %></li>
<%} %>
</ul>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String type = request.getParameter("type");
if (type == null) {
return;
}
%>
<br />
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>type</td>
	<td><b><%=type %></b></td>
</tr>
<tr>
	<td>feature</td>
	<td><% if (type.equals("A")) { %>
	sturdy, strong durability
	<% } else if (type.equals("B")) { %>
	뛰어난 대처 능력
	<% } %>
	</td>
</tr>
</table>
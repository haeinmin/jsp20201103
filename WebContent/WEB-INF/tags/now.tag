<%@ tag body-content="empty" language="java" pageEncoding="UTF-8"%>
<%@ tag import = "java.util.Calendar" %>

<%
Calendar cal = Calendar.getInstance();
%>
<%= cal.get(Calendar.YEAR) %> <%=cal.get(Calendar.MONTH)+1 %> <%=cal.get(Calendar.DATE)%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<c:set var="ok" value="${param.id ne param.pw }" scope="request"></c:set>

<jsp:forward page="jstlEx06Forward.jsp"></jsp:forward>
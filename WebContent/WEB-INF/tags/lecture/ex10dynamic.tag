<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="attr0" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ tag dynamic-attributes="attr" %>

${attr.attr1 }

<br />

${attr["attr2"]}

<br />

<hr />
<ul>
<c:forEach items="${attr }" var="entry">
	<li>${entry.key } : ${entry.value }</li>
</c:forEach>
</ul>
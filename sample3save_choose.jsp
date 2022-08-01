<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%int city = Integer.parseInt(request.getParameter("city")); %>

<c:set var="city" value="<%=city %>"></c:set>

<c:choose>
	<c:when test="${city==1 }">
		<c:set var="out" value="화성행궁"></c:set>
	</c:when>
	
	<c:when test="${city==2 }">
		<c:set var="out" value="통닭거리"></c:set>
	</c:when>
	
	<c:when test="${city==3 }">
		<c:set var="out" value="수원갈비"></c:set>
	</c:when>
	
	<c:otherwise>
		<c:set var="out" value="안산사람"></c:set>
	</c:otherwise>
</c:choose>

<c:out value="${out}"></c:out>
</body>
</html>
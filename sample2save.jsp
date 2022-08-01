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

<c:if test="${city==1}">
	<c:set var="out" value="화성행궁"></c:set>
</c:if>

<c:if test="${city==2}">
	<c:set var="out" value="통닭거리"></c:set>
</c:if>

<c:if test="${city==3}">
	<c:set var="out" value="수원갈비"></c:set>
</c:if>

수원 : <c:out value="${out}"></c:out>

</body>
</html>
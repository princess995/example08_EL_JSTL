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

<% 
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
int kor = Integer.parseInt(request.getParameter("kor"));
%>
<c:set var="name" value="<%=name %>"></c:set>
이름은 : <c:out value="${name}"></c:out> <br>

<c:set var="kor" value="<%=kor %>"></c:set>
국어점수는 : <c:out value="${kor}"></c:out>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String name;%>
<%
name = URLEncoder.encode(name, "UTF-8");
%>
<jsp:forward page="ddd.jsp">
	<jsp:param value="홍길동" name="name"/>
	<jsp:param value="89" name="kor"/>
</jsp:forward>
</body>
	<!-- 파람은 포워드를 실행시키기 위해 필요 -->
</html>
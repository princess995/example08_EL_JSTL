<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
String name;
int kor;
%>

<%
request.setCharacterEncoding("UTF-8");
name = request.getParameter("name");
kor = Integer.parseInt(request.getParameter("kor"));
%>
<a href="out.jsp?name=<%=name %>&kor=<%=kor %>">출력</a>
</body>
</html>
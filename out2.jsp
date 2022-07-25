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
name = request.getParameter("name");
kor = Integer.parseInt(request.getParameter("kor"));
%>
이름 : <%=name %>
국어 : <%=kor %>
</body>
</html>
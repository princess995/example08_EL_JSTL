<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.net.URLDecoder" %>
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
//request.setCharacterEncoding("UTF-8");
name = request.getParameter("name");
name = URLDecoder.decode(name, "UTF-8");
kor = Integer.parseInt(request.getParameter("kor"));
%>
이름 : <%=name %>
국어 : <%=kor %>
</body>
</html>
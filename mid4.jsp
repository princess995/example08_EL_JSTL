<%@page import="java.net.URLEncoder"%>
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
<%! 
String name;
int kor;
%>

<%
request.setCharacterEncoding("UTF-8");
name = request.getParameter("name");
name = URLEncoder.encode(name, "UTF-8");
kor = Integer.parseInt(request.getParameter("kor"));
RequestDispatcher rd = request.getRequestDispatcher("out4.jsp");
rd.forward(request, response);
//이 방식이 최다사용으로 꼭 기억해야.
%>

</body>
</html>
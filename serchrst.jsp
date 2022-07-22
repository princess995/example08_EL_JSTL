<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! String sers, sert, id, name;
%>

<%

ResultSet res = (ResultSet) request.getAttribute("res");

if(res.next()){
id = res.getString("id");
name = res.getString("name");
%>

아이디 <%=id %> <br>
이름<%=name %><br>

<%}

 %>
</body>
</html>
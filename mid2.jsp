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
<jsp:forward page="out2.jsp">
	<jsp:param value="<%=name %>" name="name"/>
	<jsp:param value="<%=kor %>" name="kor"/>
</jsp:forward>
</body>
</html>
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
int kor, eng, mat;
int tot;
double avg;
%>

<%
request.setCharacterEncoding("UTF-8");
name = request.getParameter("name");
name = URLEncoder.encode(name, "UTF-8");
kor = Integer.parseInt(request.getParameter("kor"));
eng = Integer.parseInt(request.getParameter("eng"));
mat = Integer.parseInt(request.getParameter("mat"));
tot = kor+eng+mat;
avg = tot/3.;
%>
<jsp:forward page="out5.jsp">
	<jsp:param value="<%=name %>" name="name"/>
	<jsp:param value="<%=kor %>" name="kor"/>
	<jsp:param value="<%=eng %>" name="eng"/>
	<jsp:param value="<%=mat %>" name="mat"/>
	<jsp:param value="<%=tot %>" name="tot"/>
	<jsp:param value="<%=avg %>" name="avg"/>
</jsp:forward>

</body>
</html>
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
int kor, eng, mat;
int tot;
Object avg;
%>
<%
request.setCharacterEncoding("UTF-8");
name = request.getParameter("name");
name = URLDecoder.decode(name, "UTF-8");
kor = Integer.parseInt(request.getParameter("kor"));
eng = Integer.parseInt(request.getParameter("eng"));
mat = Integer.parseInt(request.getParameter("mat"));
tot = kor+eng+mat;
Object avg = request.getAttribute("avg");
%>
<table border="1" width="700">
	<tr>
		<th>이름 : </th>
		<td><%=name %></td>
	</tr>
	<tr>
		<th>국어 : </th>
		<td><%=kor %></td>
	</tr>
	<tr>
		<th>영어 : </th>
		<td><%=eng %></td>
	</tr>
	<tr>
		<th>수학 : </th>
		<td><%=mat %></td>
	</tr>
	<tr>
		<th>총점 : </th>
		<td><%=tot %></td>
	</tr>
	<tr>
		<th>평균 : </th>
		<td><%=avg %></td>
	</tr>
	
</table>
</body>
</html>
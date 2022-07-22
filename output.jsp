<%request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="dbcon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table {border-collapse: collapse;}
th,td{text-align: center;}
tr.colored:nth-child(even){
  background-color:#DBE4EE;
  color:#000000;}
tr.colored:nth-child(odd){
  background-color:#B8C4D0;
  color:#000000;}
</style>
<meta charset="UTF-8">
<title>output</title>
</head>
<body>
<table width="400" align="center">

	<tr>
		<th>아이디</th><th>이름</th><th>국어</th>
	</tr>
<%
String sql = "select * from samsevlet order by id";
pstmt = con.prepareStatement(sql);
res = pstmt.executeQuery();

while(res.next())
{
	String id = res.getString(1);
	String name = res.getString(2);
	int kor = res.getInt(3);
%>
	<tr class="colored">
		<td><%=id %></td><td><%=name %></td><td><%=kor %></td>
	</tr>
<%} %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
    <%@include file="dbcon.jsp" %>
        <%@include file="top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
h3{font-family:'Nanum Gothic', 돋움; text-align: center; color:#DB7521;}
a {text-decoration-line:none; color:#DB7521;}
.table, tr, td{font-family:'Nanum Gothic', 돋움;  text-align: center; vertical-align: center; color:#DB7521;}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String no = request.getParameter("no");
String sql = "select name, wrt, wrtde from book where no = ?";
pstmt = con.prepareStatement(sql);
pstmt.setString(1, no);
res = pstmt.executeQuery();
if(res.next())
{
	String name = res.getString(1);
	String wrt = res.getString(2);
	String wrtde = res.getString(3);
%>

<h3>저자 소개</h3>
<table align="center">
	<tr >
		<th>제목</th>
		<td><%=name %></td>
	</tr>
	<tr >
		<th>저자</th>
		<td><%=wrt %></td>
	</tr>
	<tr >
		<th>소개말</th>
		<td><pre><textarea rows="5" cols="50" ><%=wrtde %></textarea></pre></td>
	</tr>
</table>
<%}  %>
</body>
<jsp:include page="footer.jsp" />
</html>
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
.table, tr, td{font-family:'Nanum Gothic', 돋움; margin-right:auto; margin-left:auto; text-align: center; vertical-align: center; color:#DB7521;}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String no = request.getParameter("no");
String sql = "select name, wrt, cover, bookde from book where no = ?";
pstmt = con.prepareStatement(sql);
pstmt.setString(1, no);
res = pstmt.executeQuery();
if(res.next())
{
	String name = res.getString(1);
	String wrt = res.getString(2);
	String cover = res.getString(3);
	String bookde = res.getString(4);
%>

<h3>도서 소개</h3>
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
		<th>책표지</th>
		<td><img src="./image/<%=cover%>"></td>
	</tr>
	<tr >
		<th>소개</th>
		<td><pre><textarea rows="5" cols="50" ><%=bookde %></textarea></pre></td>
	</tr>
</table>
<%}  %>
</body>
<jsp:include page="footer.jsp" />
</html>
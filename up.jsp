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
	.form{font-family:'Nanum Gothic', 돋움; text-align: center; vertical-align: center; color:#0F498C;}
	.table, tr, td{font-family:'Nanum Gothic', 돋움; text-align: center; vertical-align: center; color:#DB7521;}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String sno = request.getParameter("no");
String sql = "select * from book where no = ?";
pstmt = con.prepareStatement(sql);
pstmt.setString(1, sno);
res = pstmt.executeQuery();

if(res.next())
{
	String no = res.getString(1);
	String name = res.getString(2);
	String wrt = res.getString(3);
	String com = res.getString(4);
	int price = res.getInt(5);
	String cover = res.getString(6);
	String wrtde = res.getString(7);
	String bookde = res.getString(8);
	%>
	
<form action="up" method="post" enctype="multipart/form-data">
<table width="400" align="center" >
	<tr>
		<th>일련번호</th>
		<td><input type="text" name="no" value="<%=no%>" readonly></td>
	</tr>
	<tr>
		<th>도서제목</th>
		<td><input type="text" name="name" placeholder="<%=name %>"></td>
	</tr>
	<tr>
		<th>저  자</th>
		<td><input type="text" name="wrt" placeholder="<%=wrt %>"></td>
	</tr>
	<tr>
		<th>출판사</th>
		<td><input type="text" name="com" placeholder="<%=com %>"></td>
	</tr>
	<tr>
		<th>가  격</th>
		<td><input type="text" name="price" placeholder="<%=price %>"></td>
	</tr>
	<tr>
		<th>표  지</th>
		<td style="font-size:0.5em;"><input type="file" name="cover" value="<%=cover %>"><br>책표지 이미지 변경을 원치 않으시면 수정하지 말아주세요.</td>
	</tr>
	<tr>
		<th>저자소개</th>
		<td><textarea wrap="hard" rows="5" cols="21" name="wrtde"><%=wrtde %></textarea></td>
	</tr>
	<tr>
		<th>도서소개</th>
		<td><textarea wrap="hard" rows="5" cols="21" name="bookde"><%=bookde %></textarea></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit">&emsp;<input type="reset"></td>
	</tr>
</table>
</form>
	
<%} %>
</body>
<jsp:include page="footer.jsp" />
</html>
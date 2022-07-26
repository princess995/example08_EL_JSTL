<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
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
<title>도서입력</title>
</head>
<body>
<br>
<h3> 도서 입력</h3>
<form action="bin" method="post" enctype="multipart/form-data">
<table width="400" align="center" >
	<tr>
		<th>일련번호</th>
		<td><input type="text" name="no"></td>
	</tr>
	<tr>
		<th>도서제목</th>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<th>저  자</th>
		<td><input type="text" name="wrt"></td>
	</tr>
	<tr>
		<th>출판사</th>
		<td><input type="text" name="com"></td>
	</tr>
	<tr>
		<th>가  격</th>
		<td><input type="text" name="price"></td>
	</tr>
	<tr>
		<th>표  지</th>
		<td><input type="file" name="cover"></td>
	</tr>
	<tr>
		<th>저자소개</th>
		<td><textarea wrap="hard" rows="5" cols="21" name="wrtde"></textarea></td>
	</tr>
	<tr>
		<th>도서소개</th>
		<td><textarea wrap="hard" rows="5" cols="21" name="bookde"></textarea></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit">&emsp;<input type="reset"></td>
	</tr>
</table>
</form>
</body>
<jsp:include page="footer.jsp" />
</html>
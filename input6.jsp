<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="mid6.jsp" method="post">
<table border="1">
	<tr>
		<th>이름 : </th>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<th>국어 : </th>
		<td><input type="text" name="kor"></td>
	</tr>
	<tr>
		<th>영어 : </th>
		<td><input type="text" name="eng"></td>
	</tr>
	<tr>
		<th>수학 : </th>
		<td><input type="text" name="mat"></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" name="제출">
		<input type="reset" name="취소">
	</tr>
</table>
</form>
</body>
</html>
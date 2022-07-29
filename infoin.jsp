<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="in.do" method="post">
<table width="400" align="center" >
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="text" name="pw"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<th>성별</th>
		<td><input type="text" name="gender"></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="address"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit">&emsp;<input type="reset"></td>
	</tr>
</table>
</form>
</body>
</html>
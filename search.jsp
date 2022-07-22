<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="sea" method="get">
<!-- 검색할 아이디 또는 이름 : <input type="text" name="sss">   -->
<select name = "sers">
	<option value = "id">아이디</option>
	<option value = "name">이름</option>
</select>
<input type="text" name="sert">
<input type="submit" value="전송">
</form>
</body>
</html>
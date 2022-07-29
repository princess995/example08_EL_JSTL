<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Servers 폴더에 server.xml에 문구 추가했음. 잘 작동해서 DB에 잘 저장되나 확인하기 위함 -->

<form action="samsave.jsp">
이름 : <input type="text" name="name">
국어 : <input type="text" name="kor">
<input type="submit">
</form>

<a href="samout.jsp">출력</a>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function change()
{
	s = document.getElementById("img");
s.onmouseover = over;
s.onmouseout = out;
}
function over()
{
	s.style.color="red";
	s.style.width="50%";
	s.style.height="50%";
}
function out()
{
	s.style.color="blue";
	s.style.width="10%";
	s.style.height="10%";
}
</script>
</head>
<body>
<img src = "./image/1.png" width="400" height="300" id="img" onmouseover="change()">
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function over(obj) {
	obj.src = "./image/3.png"
}
function out(obj) {
	obj.src = "./image/1.png"
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src = "./image/2.png"
onmouseover=over(this);
onmouseout=out(this);>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function hideMenu()	//우클릭시
{
alert("클릭 금지");
}
document.oncontextmenu=hideMenu;
</script>
</head>
<body>
<img alt="수정 불가" src="./image/1.png" width="400">
</body>
</html>
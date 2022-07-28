<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마우스를 일정시간 사용하지 않으면 특정 페이지로 이동하게 만들기</title>

<script type="text/javascript">

var time;

function startTimer(time) {
	timeID=setTimeout("load('http://naver.com')", time);
	document.getElementById("img").title="작동시작";
}

function cancelTimer() {
	clearTimeout(timeID);
}

function load(url) {
	window.location=url;
}

</script>

</head>
<body>
<img src="./image/1.png" width="400" id="img" onmouseover="startTimer(3000)" onmouseout="cancelTimer()">
</body>
</html>
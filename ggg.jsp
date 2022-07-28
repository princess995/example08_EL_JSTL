<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">




</script>
</head>
<body>
<p id = "nowtime">현재시간</p>
<script type="text/javascript">


function timer() 
{
	var nowtime = document.getElementById("nowtime");
	nowtime.innerHTML=(new Date()).toLocaleString();
}

setInterval("timer()", 1000);//1초마다 다시 불러오기 기능 so 시간이 가는 것 처럼 보이게


</script>

</body>
</html>
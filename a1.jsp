<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
//cndjs.com에서 jquery 검색해서 복사해옴. 교재 161p
</script>

<script>
//메소드 안에서 jquery문법이 나온다. 제이쿼리 문법은 $("선택자") 형식

function hide() {	//감추기
	$("#korea").hide();
}

function show() {	//보이기
	$("#korea").show();
}

function toggle() {	//감추고 보이기 한번에 해주는 역할
	$("#korea").toggle();
}


</script>

</head>
<body>

<h1 id="korea1">멈머입니당</h1>
<img src="./image/1.png" id="korea">

<form>
<input type="button" value="감추기" onclick="hide()">
<input type="button" value="보이기" onclick="show()">
<input type="button" value="토글" onclick="toggle()">
</form>

</body>
</html>
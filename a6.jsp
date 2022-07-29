<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"> </script>

<script type="text/javascript">
	function extend() {
		$("img").height(300);	//확대
	}
	
	function ori() {
		$("img").height(144);	//원래대로
	}
	
	function disa() {
		$("img").fadeTo(3000, 0);	//숨기기
	}
			
	function ap() {
		$("img").fadeTo(3000, 1);	//나타나기
	}
	
	function tog() {
		$("img").toggle();		//토글
	}
	
	function slide() {
		$("img").slideToggle(5000);	//슬라이드
	}
	
</script>

</head>
<body>
<input type="button" value="확대" onclick="extend()">
<input type="button" value="원래대로" onclick="ori()">
<input type="button" value="숨기기" onclick="disa()">
<input type="button" value="나타나기" onclick="ap()">
<input type="button" value="토글" onclick="tog()">
<input type="button" value="슬라이드" onclick="slide()">
 <br>
<img src = "./image/1.png" id="i1">
<img src = "./image/dish4.jpg" height="144" id="i2">

</body>
</html>
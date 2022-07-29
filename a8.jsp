<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"> </script>

<script type="text/javascript">
	$(document).ready(function () {
		$("button").click(function () {		//left, top, bottom. right는 없다. 좌표값으로 보는게 편함.
			$("div").animate({left : '400px'});		//절대좌표
			$("div").animate({top : '200px'});
			$("div").animate({left : '+=10px'});	//상대좌표
			$("div").animate({top : '-=40px'});
		});
	});
	

	//아니 시발 설명을 진짜 좆같이 해... 뭔 설명이 있어야 원리도 알고 그러는거지 ㄹㅇ루..
</script>

</head>
<body>

<button>애니메이션 시작</button> <br>
<div style="height:100px; width:100px; background-color: pink; position: absolute;"></div>

</body>
</html>
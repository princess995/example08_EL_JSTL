<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"> </script>

<script type="text/javascript">
	$(document).ready(function() {	//p1인식 시키려고 넣는거래
	$("p1").click(function() {
		$("#korea").fadeTo(3000,1);		//100% 선명도까지 보이기
	});
});

	$(document).ready(function() {	//p2인식 시키려고 넣는거래
	$("p1").click(function() {
		$("#korea").fadeTo(3000,.2);	//20% 선명도까지 보이기
	});
});
</script>

</head>
<body>
<img id="korea" src="./image/1.png"> <br>
<p1>감추기</p1>
<p2>보이기</p2>
</body>
</html>
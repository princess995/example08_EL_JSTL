<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"> </script>

<script type="text/javascript">
	$(document).ready(function() {
		$("p1").click(function() {
			$("#ko2").hide();			//숨겨버리기
		});
		
		$("#ko1").click(function() {
			$("#ko2").slideDown(5000);	//5초간 천천히 나타남
		});
	});
</script>

</head>
<body>
<div id="ko1">서서히 나타나기 (클릭)</div>
<h1> <div id="ko2" style="color:pink;">안녕하세용</div>
</h1>
<p1>숨기기</p1>
</body>
</html>
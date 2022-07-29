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
		$("#ko1").click(function() {
			$("#korea").slideToggle(5000);	//korea 이미지가 slide된다. 5000은 5초
		});
	});
</script>

</head>
<body>
<img id = "korea" src="./image/1.png">
<h3 id="ko1">여기를 클릭</h3>
</body>
</html>
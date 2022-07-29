<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"> </script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#flip").click(function () {
			$("#img").slideToggle();
		});
	});
	

	
</script>

</head>
<body>
<div id="flip">얍</div><br>
<div  id="img"><img src = "./image/bg2.png"></div>

</body>
</html>
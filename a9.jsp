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
		$("button").click(function () {
			$("h1").css("color", "pink").slideUp().slideDown();
		});
	});
</script>

</head>
<body>
<h1>제이쿼리 재미없어</h1>
<button>실행</button>

</body>
</html>
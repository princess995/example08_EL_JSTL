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
			$("#pic1").width(5000).height(5000);
		});
	});
</script>

</head>
<body>
<div id="pic1" style="background-image : url('./image/1.png'); height : 100px; width:50px;"> </div>
<button>얍</button>
</body>
</html>
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
		$("p").click(function() {
			$(this).hide();
		});
		
		$("p1").click(function() {
			$("p").show();
		});
	});
</script>

</head>
<body>
<p>java - 여기를 클릭하면 지워져용</p>
<p>jsp - 여기를 클릭하면 지워져용</p>
<p>spring - 여기를 클릭하면 지워져용</p>
<p1>보이기</p1>
</body>
</html>
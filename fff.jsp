<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function aa() 
{
	alert("1");
	document.write("1");
}

function bb() 
{
	alert("2");
}

function cc() 
{
	alert("3");
}

</script>

</head>
<body>
<form>

<input type="button" value="1" onclick="aa()">
<input type="button" value="2" onclick="bb()">
<input type="button" value="3" onclick="cc()">

</form>
</body>
</html>
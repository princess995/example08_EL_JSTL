<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 스크립트</title>

<script type="text/javascript">
function over(obj) 
{
	obj.src="./image/flame.jpg";
}

function out(obj) 
{
	obj.src="./image/dish1.jpg";
}

</script>

</head>
<body>
<img src="./image/fantasy.jpg"
onmouseover=over(this);
onmouseout=out(this);
>

<!-- <img src="./image/fantasy.jpg"
onmouseover="src='./image/flame.jpg'"
onmouseout="src='./image/dish1.jpg'"
> -->
<!-- ""에 이미 묶여있기 때문에 ''로 지정 -->
</body>
</html>
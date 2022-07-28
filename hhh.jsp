<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 특정 시간 지나면 이미지가 자동으로 한번 바뀌는 것. -->
<img src="./image/fantasy.jpg" width="400" height="300" id="image1">

<script type="text/javascript">
//시간 설정. 3000=3초. change()라는 메소드를 3초뒤에 실행하라.
setTimeout("change()",3000);
function change()
{
	var image1 = document.getElementById("image1");
	image1.src="./image/flame.jpg";
}
</script>

</body>
</html>